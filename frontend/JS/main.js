/*
PAR SIMON PERIQUET
 */
"use strict";
//FORMULAIRE
document.addEventListener('DOMContentLoaded', initPage);
document.addEventListener('DOMContentLoaded', piecesIkeo);


let liste = '';
function presenterResultats(){
    console.log("envoie des données en cours.");
}

function initPage(){
    let formulaireUti = document.getElementById("formId");
    formulaireUti.addEventListener("submit", soumettreRequete);
}


function soumettreRequete(event){
    event.preventDefault();
    let formulaire = this;
    let prenom = formulaire.prenom.value;
    let nom = formulaire.nom.value;
    let adresse = formulaire.adresse.value;
    let email = formulaire.adresseE.value;
    let ville = formulaire.ville.value;
    envoyerRequete(prenom, nom, adresse, email, ville);
}

function envoyerRequete(prenom, nom, adresse, email, ville){
    let xhr = new XMLHttpRequest();
    xhr.open("get", "http://localhost:80/nouvelUti?prenom=" + prenom + "&nom=" + nom + "&adresse=" + adresse + "&email=" + email + "&ville=" + ville, true);
    xhr.onload=
        function traiterReponse(){
            let formulaire = document.getElementById("formId");
            formulaire.innerHTML += "<p><strong>Vous &ecirctes bien inscrit !</strong></p>";
        }
    xhr.send();
}
//SELECT
function piecesIkeo(){
    let xhr = new XMLHttpRequest();
    xhr.open("get", "http://localhost:80/piecesMenu", true);
    xhr.onload =  traiterReponse;
    //let menu = genererMenu(reponse);
    xhr.send();
}

function traiterReponse(){
    let reponse = JSON.parse(this.responseText);
    genererMenu(reponse);
    afficherMenu(liste);
    //return reponse;
}

function genererMenu(tableauObjets){
    if(tableauObjets.length === 0 ) return "<select></select>";
    liste = '<select id="menu">';
    let id= "idpieces";
    let pieces= "pieces";
    let proprietes = Object.keys(tableauObjets[0]);

    for(let objet in tableauObjets) {
        let option = "<option ";
            option += 'id="' + tableauObjets[objet][id] + '">' + tableauObjets[objet][pieces]  + '</option>';
        liste += option;
    }
        liste += "</select>";

}
//Action sur le menu
function gid(id){
    return document.getElementById(id);
}
