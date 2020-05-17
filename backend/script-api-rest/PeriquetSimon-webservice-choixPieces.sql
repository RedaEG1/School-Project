CREATE PROCEDURE "DBA"."proc_choixPiece"( IN idsalle CHAR(20))
RESULT( meubles VARCHAR(40) )
BEGIN 
    SELECT nomProd
    FROM produits as t1 JOIN produitsCategories as t2 ON t1.idProd = t2.prodId
    JOIN categories as t3 ON t2.catId = t3.idCat
    JOIN categoriesPieces as t4 ON t3.idCat = t4.catId
    JOIN pieces as t5 ON t4.pieceId = t5.idPiece
    WHERE nomPiece = idsalle
END
