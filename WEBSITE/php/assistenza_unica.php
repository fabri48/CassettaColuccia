<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$query = "SELECT DOMANDA, RISPOSTA, CATEGORIA, GRUPPO FROM ASSISTENZE";
$action=$_GET["action"];

if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");


if ($action=="servizi_per_e_dal_tuo_smartphone"){
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