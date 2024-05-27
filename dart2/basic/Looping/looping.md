<style>
.merah {
    color: red;
}
.biru {
    color: blue;
}
</style>


# **LOOPING DI DART**
Looping atau perulangan adalah salah satu konsep penting dalam pemograman yang memungkinkan untuk menjalankan suatu blok kode secara berulang-ulang.
## ANALOGINYA :
### 1. Membaca Buku
Condition = Selama belum memahami konsep yang ingin disampaikan 

Action = Membaca beberapa kali sampai memahami konsep yang ingin disampaikan.

### 2. Memasak 
Condition = Selama tahapan yang harus dilakukan belum tercapai.

Action = Melakukan tahapan yang harus dilakukan berulang-ulang sampai tercapai.

### 3. Menulis Atau Email 
Condition = Selama isi surat atau email yang ditulis belum sesuai dengan yang diinginkan.

Action = Mengulangi proses mengetik beberapa kali sampai isi surat atau email surat yang ditulis sesuai dengan dengan yang diinginkan.

## Perulangan for dengan  <span class="merah">for (var item list)
Perulangan for dengan <span class="merah"> for(var item in list) </span>
 digunakan untuk mengakses setiap elemen dalam sebuah list. Bentuk umum dari perulangan for ini adalah sebagai berikut:
```dart 
for (var item in list) {
// blok kode yang diulang untuk setiap elemen dalam list
}
```
Berikut adalah contoh penggunaan perulangan for dengan <span class = "merah">for(var item in list)</span>
 untuk mencetak setiap elemen dalam sebuah list:
```dart
List<int> angka = [1, 2, 3, 4, 5];

for (var i = 0; i < angka.length; i++) {
  print(angka[i]);
}
```
## Output
```dart
1
2
3
4
5
```

## *Perulangan while*
Perulangan while digunakan untuk menjalankan sebuah blok kode selama kondisi tertentu masih terpenuhi,
Bentuk umum dari perulangan while adalah sebagai berikut.
```dart
while (kondisi) {
  // blok kode yang diulang selama kondisi masih terpenuhi
}
```
### Break
Perintah break digunakan untuk menghentikan perulangan secara paksa jika kondisi tertentu terpenuhi,
Break digunakan untuk menghentikan perulangan dan keluar dari blok kode perulangan.
Bentuk umum dari Break adalah sebagai berikut :
```dart
for (var i = 0; i < 10; i++) {
  if (i == 5) {
    break;
  }
  print(i);
}
```
## Output
```dart
0
1
2
3
4
```
### Continue
Perintah continue digunakan untuk melanjutkan perulangan ke iterasi berikutnya jika kondisi tertentu terpenuhi.
Continue digunakan untuk melewatkan satu iterasi dalam blok kode perulangan, Bentuk umum dari continue adalah sebagai berikut :
```dart
for (var i = 0; i < 10; i++) {
  if (i == 5) {
    continue;
  }
  print(i);
}
```
## Output
```dart
0
1
2
3
4
6
7
8
9
````



