<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$action=$_GET["id"];
$query = "SELECT prodotti.NOME, prcolfoto.FOTO, prcolfoto.PRODOTTO FROM prodotti JOIN prcolfoto JOIN tpcon ON prodotti.CODICE=prcolfoto.PRODOTTO AND prodotti.CODICE=tpcon.PRODOTTO WHERE prcolfoto.BASE=0 AND tpcon.TARIFFA=$action";


if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");


if ($action=="0"){
    $info = mysqli_query($connect, $query);
    $assistenze=array();
    while($riga = mysqli_fetch_assoc($info)){
      $assistenze[]=$riga;  
    }
    
}
else {
    $assistenze=array();
    $assistenze = NULL;
}
echo json_encode($assistenze);

?>