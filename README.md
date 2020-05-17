# Projet final
# Présentation de l'équipe
* Bailly Xavier
* EG. Reda
* Paul Nathan
* Periquet Simon

# Description du Projet
BESOINS ATTENDUS PAR L UTILISATEUR
* IKEO regroupe sur son site web les différnets produits vendus par la société.
FONCTIONNALITES
* Une page découpée en trois parties : * Un menu cliquable : Il propose les salles où les meubles se situent dans la maison.
                                       * Un espace libre : Pour afficher les requêtes qui sont faites en BACKEND.
                                       * Un formulaire : L'utilisateur peut s'inscrire pour pouvoir profiter de services.
                                       

# Aspects implémentés
Voici les divers aspects techniques mis en place pour quel le projet voit le jour, ceux-ci sont divisés en 2 parties importantes :
*backend* (base de données, procédures SQL, webservices associé à sa procédure propre) et *frontend*(HTML, CSS, JS)
BACKEND 
* Base de données :
  Appelée dbIkeo, elle est composé de 6 TABLES :
                        * utlisateurs : composée de 6 colonnes : 
                                                               * idUti:
                                                               * nomUti:
                                                                























# Détail API rest 
WEBSERVICE commun : 
* getCSS en paramètre un *URL*, endpoint : accès au CSS de la page
* getIMG en paramètre un *URL*, endpoint : afficher les images du dossier images du siteweb
* getJS en paramètre un *URL*, endpoint : permettre l'interactivité du siteweb avec l'utilisateur
* getPage en paramètre un *URL*, endpoint : accès à la page globale

WEBSERVICE créés : 
* tableFormu avec auncun paramètre, endpoint : création de la table pour les utilisateurs inscrits
* addnewUti en paramètre un *VARCHAR*, endpoint : ajout du nouvel utilisateur dans la table des inscrits
* triMenu en paramètre deux *VARCHAR* (sont les conditions de tri), endpoint : nouvelle table selon le tri
* livraisonPossible en paramètre un *VARCHAR* (ville dans le formulaire de l'utilisateur), endpoint :                                possibilité de livraison FORMAT *CHAR(3)*
# Diagramme ER

https://cdn.discordapp.com/attachments/704314250616766574/709052753368055808/diagramme_Er.png
