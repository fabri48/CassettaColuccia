

<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$action=$_GET["codice"];
$query = "SELECT P.PRODOTTO, P.SERVIZIO, S.FOTOGRUPPO FROM pscon AS P JOIN sls AS S ON P.SERVIZIO=S.CODICE WHERE P.PRODOTTO=$action";


if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");


if ($action=="1" || $action=="2"|| $action=="4"){
    $info = mysqli_query($connect, $query);
    $slsconsigliati=array();
    while($riga = mysqli_fetch_assoc($info)){
      $slsconsigliati[]=$riga;  
    }
    
}
else {
    $slsconsigliati=array();
    $slsconsigliati = NULL;
}
echo json_encode($slsconsigliati);

?>