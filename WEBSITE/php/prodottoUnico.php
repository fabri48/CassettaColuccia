<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$action=$_GET["codice"];
$query = "SELECT P.NOME AS PRODOTTO ,P.DESBR AS  DPR,P.PREZZO AS PREZZO, C.COLORE,C.FOTO,T.NOME,T.DESBR, T.ID, SLS.FOTOGRUPPO, SLS.CODICE AS CODSLS, A.DOMANDA, SCHEDA.* FROM scheda JOIN prodotti AS P JOIN sls JOIN assistenze AS A JOIN prcolfoto AS C JOIN pacon JOIN ptcon JOIN pscon JOIN tariffe AS T ON P.CODICE=C.PRODOTTO AND scheda.CODICE=P.CODICE AND P.CODICE=pacon.PRODOTTO AND P.CODICE=ptcon.PRODOTTO AND P.CODICE=pscon.PRODOTTO AND A.CODICE=pacon.ASSISTENZA AND sls.CODICE=pscon.SERVIZIO AND T.CODICE=ptcon.TARIFFA WHERE C.BASE=2 AND pscon.BASE=0 AND ptcon.BASE=0 AND P.CODICE=$action";


if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");


if ($action=="1" || $action=="2"|| $action=="4"){
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