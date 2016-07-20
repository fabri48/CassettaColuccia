<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$action=$_GET["codice"];
$query = "SELECT CATEGORIA, SUBCAT, GRUPPO FROM ORGTAR WHERE ORGTAR.CODICE=$action ORDER BY ORGTAR.SUBCAT";


if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");


if ($action=="0"){
    $info = mysqli_query($connect, $query);
    $tariffe=array();
    while($riga = mysqli_fetch_assoc($info)){
      $tariffe[]=$riga;  
    }
    
}
else {
    $tariffe=array();
    $tariffe = NULL;
}
echo json_encode($tariffe);

?>