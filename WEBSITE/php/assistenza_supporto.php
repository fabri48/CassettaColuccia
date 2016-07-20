<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$query = "SELECT CATEGORIA, SUBCAT, GRUPPO FROM ORGASS WHERE ORGASS.CATEGORIA='Supporto tecnico e configurazione' ORDER BY ORGASS.SUBCAT";
$action=$_GET["codice"];

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