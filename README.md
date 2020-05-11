# Projet final
Menu cliquable qui amène différentes pièces, pour celà 6 tables SQL, 3 contenants les informations et 3 autres ayant le rôle de
tables de Liaison. Intégrées par les PK des autres tables.
Un formulaire simple d'inscription qui envoie les données vers la db.
Un tri possible pour affiner la recherche
# Présentation de l'équipe
* Bailly Xavier
* EG. Reda
* Paul Nathan
* Periquet Simon

# Description du Projet
Version simpliste de *IKEA*, site web donnant accès aux différents meubles proposés par l'entreprise.
Divers menus cliquables, on retrouve les pièces de la maison et les catégories de meubles qui peuvent y être installés.

# Aspects implémentés
BACKEND
* Webservices de requête http simple
* Une base de données divisés en 6 tables
* Des procédures de tri sans paramètres
* Webservice JSON permettant la diffusion des informations du formulaire vers la base de données
* Les menus proposés filtrés et présentés par les requêtes *Ajax* *Json*

FRONTEND
* Une page principale de présentation divisé en une liste de menus cliquable (UL)
* Une gallerie de présentation simplement modifiée via CSS
* Un formulaire en *footer*
* Couleurs et styles représentant l'entreprise (bleu et jaune)

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
