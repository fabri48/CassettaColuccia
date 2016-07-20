<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$query = "SELECT CODICE, FOTOGRUPPO FROM sls";

if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");
$action = $_GET["action"];

if ($action == "sls"){
    $images = mysqli_query($connect, $query);
    $immagini =array();
    while($riga = mysqli_fetch_assoc($images)){
      $immagini[]=$riga;  
    }
    
}
echo json_encode($immagini);

?>