<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$action=$_GET["id"];
$query = "SELECT tariffe.NOME, tariffe.MENU, tariffe.CHIAMATE, tariffe.SMS, tariffe.CHIAMSMS, tariffe.ESTERO, tariffe.INTERNET, tariffe.ALTRO, tariffe.PREZZO FROM tariffe WHERE ID=$action";


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