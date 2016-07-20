<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$action=$_GET["codice"];
$query = "SELECT sls.NOME, sls.FOTOGRUPPO, sls.DESCRIZIONE, sls.PREZZO, sls.RINNOVO, pscon.PRODOTTO, prodotti.NOME AS NOMEPR, prcolfoto.FOTO FROM sls JOIN pscon JOIN prodotti JOIN prcolfoto ON sls.CODICE=pscon.SERVIZIO AND pscon.BASE=0 AND prodotti.CODICE=pscon.PRODOTTO AND prcolfoto.PRODOTTO=pscon.PRODOTTO AND prcolfoto.BASE=0 AND sls.CODICE=$action";


if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");


if ($action=="1"){
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