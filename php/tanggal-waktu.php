<?php
echo date('l, d-m-Y');
 
echo "<br/>";
 
echo date('d / M / y');
 
echo "<br/>";
 
echo date('D - M / Y');

echo "<br/><br/><br/>";
/*
l -> Karakter L(huruf kecil) digunakan untuk menampilkan nama hari dalam bentuk huruf.
D -> Karakter D(huruf kapital) digunakan untuk menampilkan nama hari dalam bentuk huruf tetapi dalam bentuk 3 digit.
d -> Karakter d digunakan untuk menampilkan tanggal dalam bentuk angka yaitu dari 1 sampai dengan 31.
M -> Karakter M(huruf kapital) digunakan untuk format menampilkan bulan sekarang dalam bentuk angka yaitu misal dari angka 1 sampai 12.
m -> Karakter m(huruf kecil) digunakan untuk menampilkan nama bulan sekarang dalam bentuk huruf.
Y -> Karakter Y(huruf kapital) digunakan untuk menampilkan tahun dalam bentuk angka empat digit.
y -> Karakter y(huruf kecil) digunakan untuk menampilkan angka tahun dalam bentuk 2 digit angka terakhir dari tahun. 

Kemudian terdapat karakter tambahan yang bisa ditambahkan untuk membuat format tanggal sesuai dengan keinginan, seperti menambah karakter 
"/"(garis miring) "."(titik) "-"(strip) ","(koma) dan karakter lainya menyesuaikan.
*/

// menampilkan jam sekarang
echo date('H:i:s a');
 
echo "<br/>";
 
//kombinasi format tanggal dan jam
echo date('l, d-m-Y  h:i:s a');
/*
s -> untuk menampilkan detik saat ini, format yang ditampilkan angka dari 0 sampai dengan 59.
i -> untuk menampilkan menit sekarang dalam format 0 sampai dengan 59.
h -> untuk menampilkan jam sekarang dalam format 1 sampai 12.
H -> H(huruf kapital) digunakan untuk menampilkan format jam dalam bentuk 24 jam.
a -> untuk menampilkan waktu am atau pm sekarang.
*/

?>