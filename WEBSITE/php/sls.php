<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$query = "SELECT IMMAGINE, SUBCAT, INDIRIZZO FROM FOTO WHERE CATEGORIA='SLS'";

if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");
$action = $_GET["action"];

if ($action == "sls"){
    $promo = mysqli_query($connect, $query);
    $promozioni =array();
    while($riga = mysqli_fetch_assoc($promo)){
      $promozioni[]=$riga;  
    }
    
}
echo json_encode($promozioni);

?>