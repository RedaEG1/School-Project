CREATE PROCEDURE "DBA"."proc_callPieces"()
RESULT(  idpieces CHAR(4), pieces CHAR(20))
BEGIN
    CALL sa_set_http_header('Access-Control-Allow-Origin', '*');
    SELECT *
    FROM pieces 
END
/***************************************************************************************************************/

CREATE SERVICE "piecesMenu" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call DBA.proc_proc_callPieces()
