-------Produits triés par ordre alphabétique----------------
CREATE PROCEDURE produits_ord()
BEGIN
SELECT nomProd 
FROM produits
ORDER BY nomProd
END
