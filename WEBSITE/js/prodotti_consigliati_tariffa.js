


$(document).ready(function(){
    
     function recuperaVariabili(){
  // creo l'array che conterrà tutte le variabili con i rispettivi valori
  var variabili = {};
  // recupero tutta la querystring nell'url
  var stringUrl = window.location.search;
  // pulisco la stringa dal "?" iniziale
  stringUrl = stringUrl.substring(1);
  // suddivido in un array le varie coppie di variabile e valore
  var listaVariabili = stringUrl.split('&');
   // ciclo su tutte le coppie di variabile e valore e creo l'array finale delle variabili in url
  for(var a=0; a < listaVariabili.length; a++){
   // divido la coppia variabile e valore attraverso il simbolo "="
   var partiVariabile = listaVariabili[a].split('=');
   // inserisco nell'array finale i valori, come chiave dell'array il nome della variabile e come valore chiaramente il valore
   variabili[unescape(partiVariabile[0])] = unescape(partiVariabile[1]);
  }
  return variabili;
}
    var dati=recuperaVariabili();
    var data=dati;
    console.log(data);
    
            $.ajax({
                method: "GET",
                url: "php/prodotti_consigliati_tariffa.php",
                data: data,
                //dataType: 'json',
                success: function (data){
                        var immagini = JSON.parse(data);
                    var el="";
                        for(var i=0 ; i<immagini.length; i++){
                            el+='<div style="display: inline-block;" class="container-fluid centrato corpo imm" ><img class="container-fluid centrato corpo imm" src="'+immagini[i].FOTO+'" alt=""><br> <a href="prodottoUnico.html?codice='+immagini[i].PRODOTTO+'">'+immagini[i].NOME+'</a></div>';
                        }
                    
                    $("#prodConsigliati").html(el);
                },
                error: function(){
                    alert("Si e' verificato un errore");
                }
            });
  
});