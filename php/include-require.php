<?php
/*
Fungsi include() dan require() adalah suatu perintah atau fungsi didalam pemograman PHP untuk menyisipkan 
sebuah file PHP kedalam file PHP lainya.
Dengan teknik penyisipan file php menggunakan fungsi icnlude(),require(),require_once() akan sangat membantu
dalam membuat program.
*/
include_once('function-for.php');
// Contoh diatas cara penulisan include file php dan jika menggunakan require ada dibawah sini
require('if-else.php');
// Bagaimana jika file terletak ada diluar folder, maka bisa menambahkan "../funtion.php"
// Jika file yang disisipkan terletak pada folder lain juga bisa menambahkan "namafolder/if-else.php"

echo "<br>Farhan $x<br>";
echo "$x<br>";
echo "Testing $teman";
/*
Bagaimana dengan perbedaan dan fungsi include(),require(), tanpa menggunakan "once" dengan penggunaan include_once()
atau require_once() maka berarti penyisipan hanya dipanggil sekali saja
*/
