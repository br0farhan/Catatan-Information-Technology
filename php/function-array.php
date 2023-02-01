<?php
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