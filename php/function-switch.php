<?php

function panggil_nama()
{
    echo "<br>Nama saya Farhan Martiyansyah<br>";
}
panggil_nama();

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