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
    ///////////////////////////////////////////
    /*
Tipe data pada PHP :
1. String
2. Integer
3. Float
4. Boolean
5. Array
6. Object
7. NULL
*/
    $tes = "Saya Pergi Kerja";
    // variabel tes di atas merupakan tipe data string karena berisi text atau kalimat.
    $bilangan_pertama = 12;
    $bilangan_kedua = 78;
    //Kedua variabel di atas merupakan variabel yang bertipe data integer. 
    $angka = 12.177;
    //variabel di atas adalah variabel yang bertipe data float karena berisi bilangan desimal.
    $x = false;
    $y = true;
    //variabel di atas bertipe data boolean karena berisi nilai benar atau salah.
    $anggota = array("Andi", "Budi", "Joni");
    /*
Variabel anggota di atas adalah variabel yang bertipe data array karena memiliki banyak isi pada.
Untuk mengambil kata string Andi menggunakan int 0 dengan syntax echo"$anggota[0]"
*/
    /*
     ///////////////////////////////////////////
/*
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
     ///////////////////////////////////////////
/*
/*
Variabel teman berisi "andi" jika variabel teman sama dengan "budi" maka tampilkan budi adalah teman saya.
maka jika variabel teman sama dengan andi maka tampilkan andi adalah teman saya. jika tidak maka tampilkan
saya tidak punya teman. jadi disini kondisi "elseif" digunakan jika anda membutuhkan pengecekan kondisi kedua
atau seterusnya jika kondisi pertama tidak terpenuhi.
*/
    function panggil_nama()
    {
        echo "<br>Nama saya Farhan Martiyansyah<br>";
    }
    panggil_nama();
    /*
     ///////////////////////////////////////////
*/
    $angka = 3;
    switch ($angka) {
        case 1:
            echo "isi variabel angka adalah satu";
            break;
        case 2:
            echo "isi variabel angka adalah dua";
            break;

        case 3:
            echo "isi variabel angka adalah tiga<br>";
            break;

        case 4:
            echo "isi variabel angka adalah empat";
            break;
        case 5:
            echo "isi variabel angka adalah lima";
            break;
            /*
        default:
            echo "Isi variabel tidak di temukan";
            break;
            */
    }
    /*
Perintah switch digunakan untuk memeriksa kebenaran suatu nilai dengan memiliki banyak pemilihan atau nilai pengecekanya.
jika seluruh pengecekan tidak terpenuhi atau tidak ada yang sesuai maka akan dijalankan nilai "default" yang menampilkan -> isi variabel tidak ditemukan.
d
*/
    /*
     ///////////////////////////////////////////
*/
    $x = 1;

    while ($x <= 10) {
        echo "Angka $x <br>";
        $x++;
    }
    /*
While adalah perintah PHP untuk membuat sebuah perulangan yang tidak diketahui berapa kali perulangan tersebut dilakukan.
variabel "x"
*/
    /*
     ///////////////////////////////////////////
*/
    for ($x = 1; $x <= 10; $x++) {
        echo $x;
        //membuat perulangan yang menampilkan angka satu sampai sepuluh sesuai dengan aturan yang sudah di buat pada kondisi di atas.   
    }
    /*
Perulangan for digunakan untuk membuat sebuah perulangan pada pemograman tujuanya juga hampir sama, tetapi perulangan for ini memiliki perulangan yang dibatasi sedangkan while
perulanganya tidak dibatasi sehingga ditemukan variabel yang dicari
*/
    /*
     ///////////////////////////////////////////
*/
    //membuat array yang berisi nama buah-buahan
    $buah = array('semangka', 'jeruk', 'apel', 'anggur');
    //menampilkan data array dengan nomor urut 2
    echo "<br>$buah[2]";
    //penamaan isi array
    $buah['semangka'] = "isinya merah";
    $buah['jeruk'] = "rasanya manis";
    $buah['apel'] = "warnanya merah";
    $buah['anggur'] = "harganya mahal";

    // menampilkan isi array yang bernama jeruk
    echo "<br>{$buah['jeruk']}";
    //penamaan isi array variabel buah
    $buah = array(
        'semangka' => "isinya merah",
        'jeruk' => "rasanya manis",
        'apel' => "warnanya merah",
        'anggur' => "harganya mahal"
    );

    // menampilkan isi array yang bernama anggur
    echo "<br>{$buah['anggur']}";
    // Contoh menerapkan array dengan for
    //membuat array yang berisi nama buah-buahan
    $buah = array('semangka', 'jeruk', 'apel', 'anggur');
    //count() untuk menghitung isi array.
    for ($x = 0; $x < count($buah); $x++) {
        echo $buah[$x] . "<br/>";
    }
/*
function count() untuk menghitung jumlah array. perulangan for diatas akan menghasilkan 0 sampai 3,
kenapa 3 ? karena kita menggunakan lebih kecil dari jumlah isi (array). sehingga dapat dimunculkan urutan angka for.
*/

    ?>
</body>

</html>