<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$query = "SELECT IMMAGINE, SUBCAT, INDIRIZZO FROM FOTO WHERE CATEGORIA='PRODOTTI'";

if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");
$action = $_GET["action"];

if ($action == "prodotti"){
    $images = mysqli_query($connect, $query);
    $immagini =array();
    while($riga = mysqli_fetch_assoc($images)){
      $immagini[]=$riga;  
    }
    
}
echo json_encode($immagini);

?>