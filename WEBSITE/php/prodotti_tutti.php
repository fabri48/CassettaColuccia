<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$query = "SELECT prodotti.CODICE, prodotti.NOME, prodotti.PREZZO, prodotti.COSTO, prodotti.MARCA, prodotti.GRUPPO, prodotti.SISTEMA, prodotti.CONNESSIONE, prodotti.SCHERMO, prodotti.FOTOCAMERA, prcolfoto.FOTO FROM prodotti JOIN prcolfoto ON prcolfoto.BASE=0 AND prcolfoto.PRODOTTO=prodotti.CODICE";

if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");
$action = $_GET["action"];

if ($action == "prodotti_tutti"){
    $data = mysqli_query($connect, $query);
    $prodotti = array();
    while($riga = mysqli_fetch_assoc($data)){
      
      $prodotti[]=$riga;  
    }
    
}
echo json_encode($prodotti);

?>