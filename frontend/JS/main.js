
function showBox(n){ //ramene le contenu de la page souhaitée.
   xhr = new XMLHttpRequest(); //instance
   xhr.open('GET', 'main' + n, true); //préparation
   xhr.onreadystatechange = trtResponse; // function ''callback''
   xhr.send(); // on envoie
   
}

function initPage(){
    xhr.open('get',3333 , true);
}

function trtResponse(){ //le contenu de la page est mis en place
    if(xhr.status == 200 && xhr.readyState == 4){ //condition pour pouvoir envoyer
        document.getElementById('living').innerHTML = xhr.responseText;
    }
}

function xhrReqHtml(url, id){ // l'id de l'élément html
    var xhr = new XMLHttpRequest(); // instance
    xhr.open('GET', url, true); // préparation
    xhr.onreadystatechange =  // function ''callback'' (anonyme)
        function (){ //fonction anonyme
            if(xhr.status == 200 && xhr.readyState == 4){
                setElem(id, xhr.responseText);
            }
        }
    xhr.send()
}

