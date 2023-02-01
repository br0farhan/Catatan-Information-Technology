<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BELAJAR PEMOGRAMAN PHP</title>
</head>

<body>
    <h1>TESTING EVERYBODY</h1>
    <?php
    // Ini merupakan komentar satu baris.
    echo "Ini adalah skrip PHP pertama saya!";
    /*
Ini merupakan komentar yang berbeda baris
*/
    ///////////////////////////////////////////
    /*
Perintah ini akan menambahkan dua variabel 
dan akan menampilkan hasil (16).
*/
    $x = 4;
    $y = 12;
    $z = $x + $y;
    echo "<br>$z";
    /*
Variabel sangatlah sensitif. Jika Anda ingin menuliskan $x=4, 
namun diketik $X dengan huruf besar, maka ini tidak akan ditampilkan dengan benar.\
ini merupakan proses penjumlahan.
*/
    ///////////////////////////////////////////
    $nama = "Farhan Martiyansyah";
    $umur = 26;
    echo "<br/>";
    echo $nama;
    echo "<br/>";
    echo $umur;
    echo "<br/>";
    echo "hai, perkenalkan nama saya " . $nama . " dan saya berumur " . $umur . " tahun";
    /*
Perhatikan pada contoh syntax diatas. tanda titik (.) digunakan untuk memisahkan string dan variabel,
dan syntax <br/> adalah syntax HTML.
*/
    ///////////////////////////////////////////
    $alamat = "jakarta";
    $alamat = "bandung";
    echo "<br/><b>$alamat</b>";
    /*
Perhatikan pada contoh syntax diatas. tanda titik (.) digunakan untuk memisahkan string dan variabel,
dan syntax <br/> adalah syntax HTML.

*/


    ?>
</body>

</html>