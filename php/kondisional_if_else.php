<?php

$umur = 27;

if($umur > 30){
    echo"umur kamu sudah tua";
}elseif( $umur < 39){
    echo"umur kamu masih muda";
}else{
    echo "";
}

$array = [1,2,3,4,5];

foreach ($array as $key => $value) {
    echo $value;
}
// TESTING
