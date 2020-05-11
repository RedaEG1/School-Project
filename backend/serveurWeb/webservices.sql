--------LA PROCEDURE LIEE A SON SERVICE WEB------------------

CREATE PROCEDURE getProdCat()
RESULT ( nom CHAR(20), cat CHAR(20))
BEGIN 
 CALL sa_set_http_header('Content-Type', 'application:json; charset=utf-8');
 SELECT nomProd, nomCat 
 FROM produits as Pro join produitsCategories as Pc ON Pro.idProd = Pc.prodId 
 JOIN categories as Cat ON Cat.idCat = Pc.catId
END;

CREATE SERVICE "getProduitsCat"
TYPE 'JSON'
AUTHORIZATION OFF 
USER "DBA"
URL ON 
METHODS 'GET' 
AS CALL getProdCat();

------------------------------------------------------------

CREATE PROCEDURE getLiving()
RESULT (meuble CHAR(40))
BEGIN 
 SELECT nomProd 
 FROM produits as p1 join  produitsPieces as p2 ON p1.idProd = p2.prodId 
 WHERE pieceId = 10
END;

CREATE SERVICE "getLiving"
TYPE 'JSON'
AUTHORIZATION OFF 
USER "DBA"
URL ON 
METHODS 'GET'
AS CALL getLiving();

----------------------------------------------------------------

CREATE PROCEDURE getSam()
RESULT (meuble CHAR(40))
BEGIN 
 SELECT nomProd 
 FROM produits as p1 join  produitsPieces as p2 ON p1.idProd = p2.prodId 
 WHERE pieceId = 11
END;

CREATE SERVICE "getSam"
TYPE 'JSON'
AUTHORIZATION OFF 
USER "DBA"
URL ON 
METHODS 'GET'
AS CALL getSam();

---------------------------------------------------------------

CREATE PROCEDURE getTerr()
RESULT (meuble CHAR(40))
BEGIN 
 SELECT nomProd 
 FROM produits as p1 join  produitsPieces as p2 ON p1.idProd = p2.prodId 
 WHERE pieceId = 13
END;

CREATE SERVICE "getTerr"
TYPE 'JSON'
AUTHORIZATION OFF 
USER "DBA"
URL ON 
METHODS 'GET'
AS CALL getTerr();

-----------------------------------------------------------------

CREATE PROCEDURE getchambE()
RESULT (meuble CHAR(40))
BEGIN 
 SELECT nomProd 
 FROM produits as p1 join  produitsPieces as p2 ON p1.idProd = p2.prodId 
 WHERE pieceId = 14
END;

CREATE SERVICE "getchambE"
TYPE 'JSON'
AUTHORIZATION OFF 
USER "DBA"
URL ON 
METHODS 'GET'
AS CALL getchambE();

-----------------------------------------------------------------

CREATE PROCEDURE getchambA()
RESULT (meuble CHAR(40))
BEGIN 
 SELECT nomProd 
 FROM produits as p1 join  produitsPieces as p2 ON p1.idProd = p2.prodId 
 WHERE pieceId = 15
END;

CREATE SERVICE "getchambA"
TYPE 'JSON'
AUTHORIZATION OFF 
USER "DBA"
URL ON 
METHODS 'GET'
AS CALL getchambA();

---------------------------------------------------------------------






