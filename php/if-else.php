<?php
/*
if(kondisi){
    jika kondisi terpenuhi
}else{
    jika kondisi tidak terpenuhi
}
*/
$teman = "andi";
if ($teman == "Budi") {
    echo "Budi adalah teman saya";
} elseif ($teman == "andi") {
    echo "<br>Andi adalah teman saya";
} else {
    echo "Saya tidak punya teman";
}
/*
Variabel teman berisi "andi" jika variabel teman sama dengan "budi" maka tampilkan budi adalah teman saya.
maka jika variabel teman sama dengan andi maka tampilkan andi adalah teman saya. jika tidak maka tampilkan
saya tidak punya teman. jadi disini kondisi "elseif" digunakan jika anda membutuhkan pengecekan kondisi kedua
atau seterusnya jika kondisi pertama tidak terpenuhi.
*/
