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
