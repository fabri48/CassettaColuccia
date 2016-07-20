<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$query = "SELECT DISTINCT ORGTAR.CODICE, FOTO.IMMAGINE, FOTO.SUBCAT FROM FOTO JOIN ORGTAR WHERE FOTO.CATEGORIA='TARIFFE' AND FOTO.SUBCAT=ORGTAR.CATEGORIA";

if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");
$action = $_GET["action"];

if ($action == "tariffe"){
    $images = mysqli_query($connect, $query);
    $immagini =array();
    while($riga = mysqli_fetch_assoc($images)){
          $immagini[]=$riga;  
    }
    
}
echo json_encode($immagini);

?>