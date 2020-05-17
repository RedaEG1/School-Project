# Projet final
# Présentation de l'équipe
* Bailly Xavier
* EG. Reda
* Paul Nathan
* Periquet Simon

# Description du Projet
BESOINS ATTENDUS PAR L UTILISATEUR
* IKEO regroupe sur son site web les différents produits vendus par la société. Donc pouvoir naviguer afin d'y trouver son bonheur.

FONCTIONNALITES
* Une page découpée en trois parties : 
Un menu cliquable : Il propose les salles où les meubles se situent dans la maison.
Un espace libre : Pour afficher les requêtes qui sont faites en BACKEND.
Un formulaire : L'utilisateur peut s'inscrire pour pouvoir profiter de services.
                                       
# Aspects implémentés
Voici les divers aspects techniques mis en place pour quel le projet voit le jour, ceux-ci sont divisés en 2 parties importantes :
*backend* (base de données, procédures SQL, webservices associé à sa procédure propre) et *frontend*(HTML, CSS, JS)
BACKEND 
* Base de données :
Composé de 6 tables (utilisateurs, produitsCategories, produits, pieces, categoriesPieces, categories)
D
* Procédures SQL : instructions liées à un service web qui permet la modification, l'accès aux données des tables(détaillés dans *Détail API rest*)
                                
* Webservices : requête pour relier les données du BACKEND au FRONTEND(détaillés dans *Détail API rest*)

* HTML : Une page principale où tout est affiché.

* CSS : Donner au site un visuel plus agréable.

* JS : Permet l'interaction entre l'utilisateur, la page HTML et le BACKEND
                                                        
# Détail API rest 

Définissons tout d'abord 3 caractéristiques d'une procédure SQL :
PARAMETRES : Sur base de quelle donnée la procédure va se reposer.
FORMAT DE REPONSE : Sous quelle forme informatique est donnée la réponse (integer, number, etc.)
ENDPOINT : Le but de la procédure

Simon PERIQUET : 

* La procédure "proc_callPieces()" invoquée par le service web "piecesMenu" : 
PARAMETRE(S) : AUCUN.
FORMAT DE REPONSE : 2 colonnes ( un id CHAR(4) et un nom  CHAR(20)
ENDPOINT : Ramener TOUTES les pièces avec leur id et leur nom

* La procédure "proc_choixPiece(IN idsalle CHAR(20)) invoquée par le service web "choixPieces" :
PARAMETRE(S) : Un ID de type CHAR(20)
FORMAT DE REPONSE : 2 colonnes ( un id CHAR(4), meuble VARCHAR(40))
ENDPOINT : Ramener les meubles d'une pièce précise via l'id de celle-ci

* La procédure "proc_nouvUti(IN prenom VARCHAR(40), IN nom VARCHAR(40), IN adresse VARCHAR(120), IN email VARCHAR(120), IN ville VARCHAR(40) ) invoquée par le service web "nouvelUti" :
PARAMETRE(S) : 5 paramètres : un prenom type VARCHAR(40), nom VARCHAR(40), adresse VARCHAR(120), adresse email VARCHAR(120), une ville VARCHAR(40)
FORMAT DE REPONSE : AUCUN.
ENDPOINT : Inscrit dans la table utilisateurs le nouvel inscrit en lui donnant en plus un Id et ne prenant que l'initiale du nom

Pour les services web, aucun ne demande d'autorisation ni de sécurité. De plus les 3 procédures sont du type JSON.

# Détail DATABASE
VOICI LES  5 TABLES DE LA DB 
utlisateurs : composée de 6 colonnes 
  idUti : L'Id de chaque utilisateur est un Integer et est une clé primaire qui ne peut accepter la valeur NULL,
  nomUti : L'initiale du nom de l'utilisateur (coupé par un LEFT()) est un CHAR(1) qui ne peut être NULL,
  prenomUti : Le prenom de l'utilisateur est un VARCHAR(40) qui ne peut être NULL,
  adresseUti : L'adresse physique de l'utilisateur est un VARCHAR(120) qui ne peut être NULL,
  emailUti : L'adresse e-mail de l'utilisateur est un VARCHAR(120) qui ne peut être NULL,
  villeUti : La ville ou habite l'utilisateur est un VARCHAR(120) qui ne peut être NULL.
  
produits : composée de  2 colonnes
  idProd : L'id de chaque produit qui est un CHAR(3) et est une clé primaire qui qui ne peut être NULL,
  nomProd : Le nom du produit qui est un CHAR(40) qui ne peut être NULL.

pieces : composée de 2 colonnes
  idPiece : l'id de chaque produit qui est un CHAR(4) et est une clé primaire qui ne peut être NULL,
  nomPiece : le nom de la pièce qui est un CHAR(20) qui ne peut être NULL.
  
categories : composé de 2 colonnes
  idCat : L'id de chaque categorie qui est un CHAR(4) et est une clé primaire qui ne peut être NULL,
  nomCat : Le nom de la catégorie qui est un CHAR(20) qui ne peut être NULL.
  
produitsCategories : composé de 3 colonnes ( TABLE DE LIAISON )
  idPc : L'id reliant le produit  à sa catégorie qui est un Integer et est une clé primaire qui ne peut être NULL,
  prodId : Clé étrangère de la table produits de la colonne (idProd),
  catId : Clé étrangère de la table categories de la colonne (idCat).
  
categoriesPieces : composé de 3 colonnes ( TABLE DE LIAISON )
  idCp : L'id reliant la categorie à sa pièce qui est un Integer et est une clé primaire qui ne peut être NULL,
  catId : Clé étrangère de la table categories de la colonne du même nom,
  pieceId : Clé étrangère de la table pieces de la colonne(idPiece).
  
  

