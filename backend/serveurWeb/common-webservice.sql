ALTER FUNCTION "DBA"."getPath"()
returns long varchar
deterministic
BEGIN
 declare dbPath long varchar; 
 declare dbName long varchar; 
 
 set dbPath = (select db_property ('file')); 
 set dbName = (select db_property('name')) + '.db'; 
 set dbPath = left(dbPath, length(dbPath)-length(dbName)); 
 
 return dbPath; 
END

ALTER PROCEDURE "DBA"."http_getCSS"(in url char(255))
BEGIN 
 call sa_set_http_header('Content-Type', 'text/css'); 
 Call sa_set_http_header('Access-Control-Allow-Origin', '*'); 
 select xp_read_file(dba.getPath() || 'CSS\' || url); 
END

ALTER PROCEDURE "DBA"."http_getIMG"(in url char(255))
BEGIN
 call sa_set_http_header('Content-Type', 'image/png'); 
 Call sa_set_http_header('Access-Control-Allow-Origin', '*'); 
 select xp_read_file(dba.getPath() || 'IMG\' || url);
END

ALTER PROCEDURE "DBA"."http_getJS"(in url char(255))
BEGIN 
 call sa_set_http_header('Content-Type', 'application/javascript'); 
 Call sa_set_http_header('Access-Control-Allow-Origin', '*'); 
 select xp_read_file(dba.getPath() || 'js\' || url);                
END

ALTER PROCEDURE "DBA"."http_getPage"(in url char(255))
BEGIN
 call sa_set_http_header('Content-Type', 'text/html; charset=utf-8'); 
 Call sa_set_http_header('Access-Control-Allow-Origin', '*'); 
 select xp_read_file(dba.getPath() || url || '.html');  
END
