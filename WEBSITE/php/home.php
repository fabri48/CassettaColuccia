<?php
header("Content-Type: text/javascript; charset=utf-8");
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$query = "SELECT TARIFFE.CODICE AS CODICE, TARIFFE.NOME AS NOME, TARIFFE.FOTO AS FOTO, TARIFFE.PREZZO AS PREZZO, 'TARIFFE' AS TIPO
FROM TARIFFE WHERE TARIFFE.PROMOZIONE=1
UNION
SELECT PRODOTTI.CODICE, PRODOTTI.NOME AS NOME, PRCOLFOTO.FOTO AS FOTO, PRODOTTI.PREZZO AS PREZZO, 'PRODOTTI' AS TIPO
FROM PRODOTTI JOIN PRCOLFOTO ON PRODOTTI.CODICE=PRCOLFOTO.PRODOTTO WHERE PRCOLFOTO.BASE=0 AND PRODOTTI.PROMOZIONE=1
UNION
SELECT SLS.CODICE, SLS.NOME AS NOME, SLS.FOTO AS FOTO, SLS.PREZZO AS PREZZO, 'SLS' AS TIPO FROM SLS WHERE SLS.PROMOZIONE=1";

if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");
$action = $_GET["action"];

if ($action == "promozione"){
    $promo = mysqli_query($connect, $query);
    $promozioni = array();
    while($riga = mysqli_fetch_assoc($promo)){
      $promozioni[]=$riga;  
    }
    
}
echo json_encode($promozioni);

?>