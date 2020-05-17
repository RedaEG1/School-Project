CREATE PROCEDURE "DBA"."proc_nouvUti"(IN prenom VARCHAR(40), IN nom VARCHAR(40), IN adresse VARCHAR(120), IN email VARCHAR(120), IN ville VARCHAR(40) )

BEGIN 
    CALL sa_set_http_header('Access-Control-Allow-Origin', '*');
    INSERT INTO utilisateurs 
    (nomUti, prenomUti, adresseUti, emailUti, villeUti)
    VALUES
    (LEFT(nom, 1), prenom, adresse, email, ville)
END

/**************************************************************************************/

CREATE SERVICE "nouvelUti" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call DBA.proc_nouvelUti(:prenom,:nom,:adresse,:email,:ville);
