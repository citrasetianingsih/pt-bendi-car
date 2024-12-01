<?php

$host ="localhost";
$username ="root";
$password ="";
$database ="bendi_car";

$koneksi = new mysqli($host,$username,$password,$database);
if ($koneksi){
echo "databases terkoneksi";
}else{
    echo "databases tidak tekoneksi";
}

?>