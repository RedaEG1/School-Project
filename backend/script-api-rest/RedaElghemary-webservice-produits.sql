/* procedure appel aux produits */

CREATE PROCEDURE "DBA"."proc_callProduits"()
RESULT( idProd CHAR(3), nomProd CHAR(40))
BEGIN
    CALL sa_set_http_header('Access-Control-Allow-Origin', '*');
    SELECT *
    FROM produits
END;

/* service */

CREATE SERVICE "produits" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call DBA.proc_callProduits();

description :
Creation de l'affichage de tous les produits de la base de donnée par défaut au chargement de la page,
en allant chercher les produits et leurs id dans la base de donnée,
affichage dans la <section> du <body>.
