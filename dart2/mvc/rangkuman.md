# Model, View, Controller & Service

*Contoh penerapan OOP*

**Definisi**

Model merupakan representasi dari suatu objek atau konsep dalam aplikasi yang digunakan untuk memudahkan 
pengelolaan data pada aplikasi. Model dapat berisi atribut atau properti yang mereperenstasikan karakteristik
dari objek yang diwakilinya. Pada umumnya model digunakan untuk memudahkan pengelohan data pada aplikasi.

**Tujuan**

Tujuan dari penggunaan model dalam pengembangan aplikasi adalah untuk memudahkan pengelohan data pada aplikasi.
Aplikasi dapat mengelola data dengan lebih terstruktur dan mudah dipahami, sehingga dapat memudahkan pengembangan aplikasi
secara keseluruhan.

**Contoh Model**

```dart
class Student {
  String name;
  int age;
  String major;
  
  Student({this.name, this.age, this.major});
  
  // Method untuk mengubah Student menjadi Map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'major': major,
    };
  }
  
  // Method untuk mengambil Student dari Map
  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      name: map['name'],
      age: map['age'],
      major: map['major'],
    );
  }
}
```

**Berikut adalah 8 Model yang sering digunakan pada Aplikasi POS:**

1. Product: Model Produk digunakan untuk merepresentasikan informasi tentang produk yang dijual di dalam aplikasi POS, seperti nama produk, kode produk, harga, stok, dan sebagainya.
2. Customer: Model Pelanggan digunakan untuk merepresentasikan informasi tentang pelanggan, seperti nama, alamat, nomor telepon, dan sebagainya.
3. Order: Model Order digunakan untuk merepresentasikan informasi tentang pesanan atau transaksi yang dilakukan oleh pelanggan, seperti daftar produk yang dibeli, jumlah, harga, dan sebagainya.
4. Sales: Model Penjualan digunakan untuk merepresentasikan informasi tentang penjualan yang terjadi, seperti tanggal penjualan, jumlah penjualan, total harga, dan sebagainya.
5. Employee: Model Karyawan digunakan untuk merepresentasikan informasi tentang karyawan atau pegawai toko, seperti nama, alamat, jabatan, dan sebagainya.
6. Supplier: Model Supplier digunakan untuk merepresentasikan informasi tentang pemasok atau supplier produk, seperti nama, alamat, nomor telepon, dan sebagainya.
7. Payment: Model Pembayaran digunakan untuk merepresentasikan informasi tentang pembayaran yang dilakukan oleh pelanggan, seperti jenis pembayaran, jumlah pembayaran, tanggal pembayaran, dan sebagainya.
8. Discount: Model Diskon digunakan untuk merepresentasikan informasi tentang diskon yang diberikan pada produk atau transaksi, seperti jenis diskon, nilai diskon, dan sebagainya.

**Berikut adalah 8 Model yang sering digunakan pada Aplikasi ELearning:**

1. Course: Model Mata Kuliah digunakan untuk merepresentasikan informasi tentang mata kuliah atau kursus yang ditawarkan pada aplikasi ELearning, seperti nama kursus, deskripsi, dosen pengampu, dan sebagainya.
2. Lesson: Model Pelajaran digunakan untuk merepresentasikan informasi tentang pelajaran atau modul yang terkait dengan setiap kursus, seperti judul pelajaran, deskripsi, dan sebagainya.
3. User: Model Pengguna digunakan untuk merepresentasikan informasi tentang pengguna aplikasi, seperti nama, email, password, dan sebagainya.
4. Assignment: Model Tugas digunakan untuk merepresentasikan informasi tentang tugas yang diberikan kepada pengguna, seperti judul tugas, instruksi, tenggat waktu, dan sebagainya.
5. Quiz: Model Kuis digunakan untuk merepresentasikan informasi tentang kuis atau tes yang diberikan kepada pengguna, seperti judul kuis, jumlah soal, waktu pengerjaan, dan sebagainya.
6. Enrollment: Model Pendaftaran digunakan untuk merepresentasikan informasi tentang pendaftaran atau registrasi pengguna pada aplikasi, seperti tanggal pendaftaran, status pendaftaran, dan sebagainya.
7. Forum: Model Forum digunakan untuk merepresentasikan informasi tentang forum diskusi yang terkait dengan setiap kursus, seperti judul forum, deskripsi, dan sebagainya.
8. Certificate: Model Sertifikat digunakan untuk merepresentasikan informasi tentang sertifikat atau penghargaan yang diberikan kepada pengguna yang telah menyelesaikan kursus dengan baik, seperti nama pengguna, nama kursus, dan sebagainya.

**Berikut adalah 8 Model yang sering digunakan pada Aplikasi Absensi Karyawan:**

1. Employee: Model Karyawan digunakan untuk merepresentasikan informasi tentang karyawan, seperti nama, alamat, jabatan, dan sebagainya.
2. Attendance: Model Absensi digunakan untuk merepresentasikan informasi tentang absensi yang dilakukan oleh karyawan, seperti tanggal absensi, waktu masuk, waktu keluar, dan sebagainya.
3. Department: Model Departemen digunakan untuk merepresentasikan informasi tentang departemen atau divisi di mana karyawan bekerja, seperti nama departemen, nomor telepon, dan sebagainya.
4. Schedule: Model Jadwal digunakan untuk merepresentasikan informasi tentang jadwal kerja karyawan, seperti waktu masuk, waktu keluar, hari libur, dan sebagainya.
5. Leave: Model Cuti digunakan untuk merepresentasikan informasi tentang cuti yang diambil oleh karyawan, seperti tanggal cuti, jenis cuti, dan sebagainya.
6. Payroll: Model Penggajian digunakan untuk merepresentasikan informasi tentang penggajian karyawan, seperti jumlah gaji, tunjangan, potongan, dan sebagainya.
7. Position: Model Posisi digunakan untuk merepresentasikan informasi tentang posisi atau jabatan yang dipegang oleh karyawan, seperti nama posisi, tanggung jawab, dan sebagainya.
8. Benefit: Model Manfaat digunakan untuk merepresentasikan informasi tentang manfaat atau tunjangan yang diberikan kepada karyawan, seperti asuransi kesehatan, tunjangan makan, dan sebagainya.

**5 Alasan Mengapa menyimpan data dalam bentuk Model lebih baik daripada Map**

Berikut ini adalah 5 alasan mengapa menyimpan data dalam bentuk Model lebih baik daripada Map:

1. Lebih aman: Model lebih aman karena atribut yang digunakan dalam Model memiliki tipe data yang telah terdefinisi dengan jelas, sehingga meminimalkan kesalahan pada saat program dijalankan. Sedangkan pada Map, tipe data tidak terdefinisi secara jelas dan kunci serta nilai dapat diubah atau dihapus secara dinamis.
2. Lebih mudah dimengerti: Model memberikan struktur data yang jelas dan mudah dimengerti. Struktur data ini memudahkan programmer dalam mengelola data dan membantu dalam proses pengembangan aplikasi.
3. Validasi data: Model menyediakan fitur validasi data yang memungkinkan data yang dimasukkan sesuai dengan tipe data yang diharapkan dan memenuhi persyaratan yang diperlukan. Sedangkan pada Map, tidak ada fitur validasi data yang tersedia, sehingga memungkinkan data yang tidak valid dimasukkan ke dalam Map.
4. Memudahkan konversi data: Model dapat dengan mudah dikonversi ke dalam format data lain seperti JSON atau XML. Konversi ini memudahkan pengguna dalam melakukan operasi yang berbeda pada data yang sama.
5. Lebih mudah dalam melakukan operasi CRUD: Model menyediakan operasi CRUD (Create, Read, Update, dan Delete) yang mudah untuk dilakukan pada data karena struktur dan tipe data yang sudah terdefinisi dengan jelas. Hal ini membuat operasi CRUD pada data menjadi lebih mudah dan efisien. Sedangkan pada Map, operasi CRUD dapat menjadi rumit karena tipe data yang tidak terdefinisi dengan jelas dan kunci serta nilai dapat diubah atau dihapus secara dinamis.

**Apakah Aplikasi harus menggunakan Model?**

Tidak semua aplikasi cocok menggunakan **Model**. Jika data-nya terlalu dinamis maka lebih baik menggunakan Map saja. Beberapa contoh kasus di mana penggunaan Map lebih cocok adalah sebagai berikut:

1. Data yang tidak terstruktur: Jika data yang diproses tidak memiliki format atau struktur yang teratur dan berubah ubah, penggunaan Model dapat menjadi kurang efektif. Dalam kasus ini, penggunaan Map dapat mempermudah akses dan manipulasi data.
2. Data dengan jumlah atribut yang tidak tetap: Jika data yang diproses memiliki jumlah atribut yang berubah-ubah, penggunaan Model dapat menjadi kurang fleksibel. Dalam kasus ini, penggunaan Map dapat memungkinkan penambahan atau penghapusan atribut secara dinamis.
3. Data dengan tipe atribut yang bervariasi: Jika data yang diproses memiliki tipe atribut yang bervariasi, penggunaan Model dapat menjadi kurang efektif. Dalam kasus ini, penggunaan Map dapat memungkinkan penggunaan tipe atribut yang berbeda-beda dalam satu objek.

**Encoding Model**

Encoding Model adalah proses mengubah representasi data dari bentuk objek ke bentuk yang dapat disimpan atau ditransmisikan. Pada umumnya, encoding model dilakukan dengan mengonversi objek menjadi format serialisasi seperti JSON atau XML. Hal ini diperlukan ketika data perlu disimpan atau dikirimkan melalui jaringan atau disimpan dalam database. Encoding model juga memungkinkan data untuk diakses oleh berbagai platform dan bahasa pemrograman yang berbeda. Setelah data di-encoding, maka data tersebut dapat disimpan dalam file atau dikirimkan melalui jaringan, dan kemudian di-decoding kembali ke bentuk objek pada saat diperlukan. Encoding Model penting dalam pengembangan aplikasi karena memungkinkan komunikasi data yang efisien antara berbagai komponen sistem


```dart
Model > Json/XML
```

**Decoding Model**

Decoding Model adalah proses mengubah representasi data yang telah di-encoding kembali ke bentuk objek yang asli. Pada umumnya, decoding model dilakukan dengan mengonversi data yang telah di-encoding ke dalam format objek yang dapat dipahami oleh bahasa pemrograman atau platform yang digunakan. Decoding model diperlukan ketika data yang telah di-encoding perlu diakses atau dimanipulasi pada saat runtime aplikasi. Proses decoding model dapat dilakukan dengan menggunakan library atau framework tertentu yang mendukung format serialisasi yang digunakan. Penting untuk diingat bahwa decoding model harus dilakukan dengan benar agar data yang dihasilkan sesuai dengan bentuk asli dari data yang telah di-encoding. Proses decoding model menjadi sangat penting terutama ketika data yang diakses oleh aplikasi berasal dari sumber eksternal seperti server atau file yang disimpan pada sistem. Dengan decoding model yang tepat, data yang telah di-encoding dapat digunakan oleh aplikasi dengan mudah dan efisien.

```dart
Json/XML > Model
```

Contoh Class Model yang memiliki fitur Encoding dan Decoding

```dart
import 'dart:convert';

class Person {
  String name;
  int age;
  
  Person({required this.name, required this.age});
  
  // Encoding Model menggunakan JSON.encode()
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
  
  // Decoding Model menggunakan factory constructor fromJson()
  factory Person.fromJson(String jsonString) {
    final Map<String, dynamic> data = json.decode(jsonString);
    final String name = data['name'];
    final int age = data['age'];
    return Person(name: name, age: age);
  }
}
```

**View**

Pada arsitektur Model-View-Controller (MVC), **View** bertanggung jawab untuk menampilkan UI (User Interface) ke user. Apa yang bisa kamu lihat pada sebuah Aplikasi, seharusnya itu ditulis di dalam View. Contoh-nya, list Product, button, header aplikasi, chart dan lainnya.

**Controller**

**Controller** bertanggung jawab untuk mengatasi segala event yang terjadi pada view. Contoh-nya, ketika tombol login di klik, maka apa yang terjadi ketika tombol login di klik sudah pasti akan kita tulis di Controller. Sedangkan tombol Login itu sendiri, sudah pasti berada di dalam View.

**Service**

**Service** bertanggung jawab untuk mengirim dan menerima data yang berasal dari API (baik melalui HTTP Request maupun Websocket), Local Storage, File, dan lainnya. Intinya, tiap kali kamu membutuhkan data, mintalah kepada **Service.** Sebuah Class Service tidak boleh terikat dengan UI maupun State Management di Flutter.

Jika kamu membuat HTTP Request dengan package DIO maupun HTTP, seharusnya kamu membuatnya di Service. Bukan di View maupun Controller.

**Contoh Model, View, Controller dan Service pada Aplikasi:**

```dart
Module Product
---
Model: Product
View: ProductView
Controller: ProductController
Service: ProductService

Module Customer
---
Model: Customer
View: CustomerView
Controller: CustomerController
Service: CustomerService

Module Order
---
Model: Order
View: OrderView
Controller: OrderController
Service: OrderService
```

Untuk Mentor:
- Berikan Contoh View dan Controller untuk mengelola data Product.
- Berikan Contoh pembuatan Model Product (Cara Manual)
- Berikan Contoh pembuatan Model Product (Dengan Quicktype)
- Berikan Contoh pembuatan Model Product (Dengan Hiranta Json to Dart)
- Berikan Contoh Service untuk Product (Cukup untuk Get Products dan Create Products)
- Q&A