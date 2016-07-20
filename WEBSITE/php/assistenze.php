<?php
$connect = mysqli_connect('localhost', 'root', '', 'my_cassettacolucciahyp');
$query = "SELECT DISTINCT CATEGORIA, CODICE FROM ORGASS";

if(mysqli_connect_errno()){
    echo mysqli_connect_error;
}
mysqli_set_charset($connect, "utf8");
$action = $_GET["action"];

if ($action == "assistenze"){
    $info = mysqli_query($connect, $query);
    $assistenze =array();
    while($riga = mysqli_fetch_assoc($info)){
      $assistenze[]=$riga;  
    }
    
}
echo json_encode($assistenze);

?>