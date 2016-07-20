
<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$action=$_GET["codice"];
$query = "SELECT P.PRODOTTO, P.TARIFFA, T.ID, T.NOME, T.CHIAMATE, T.SMS, T.CHIAMSMS, T.ESTERO, T.INTERNET, T.ALTRO, T.PREZZO FROM ptcon AS P JOIN tariffe AS T ON P.TARIFFA=T.CODICE WHERE P.PRODOTTO=$action";


if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");


if ($action=="1" || $action=="2"|| $action=="4"){
    $info = mysqli_query($connect, $query);
    $tariffeconsigliate=array();
    while($riga = mysqli_fetch_assoc($info)){
      $tariffeconsigliate[]=$riga;  
    }
    
}
else {
    $tariffeconsigliate=array();
    $tariffeconsigliate = NULL;
}
echo json_encode($tariffeconsigliate);

?>