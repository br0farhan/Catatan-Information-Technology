// void main() {
// TODO "int"
// int digunakan untuk menyimpan bilangan bulat atau angka tanpa koma, Contoh penggunaanya pada aplikasi kasir bisa
// digunakan untuk menyimpan jumlah barang yang dijual atau harga barang dalam bentuk bilangan bulat.
// int soldQuantity = 10;
// print(soldQuantity);
// TODO "double"
// double digunakan untuk menyimpan bilangan desimal atau angka dengan koma, contoh penggunaanya pada aplikasi kasir
// bisa digunakan untuk menyimpan harga barang dalam bentuk desimal.
// double itemPrice = 100.000;
// print(itemPrice);
// TODO "string"
// string digunakan untuk menyimpan teks atau karakter
// String firstName = "Farhan Martiyansyah";
// print(firstName);
// String streetCity = "Kp Lebak jaya, Bogor";
// print(streetCity);
// TODO "bool"
// bool digunakan untuk menyimpan nilai boolean yang bisa bernilai "true" atau "false"
// bool isPaid = true;
// bool transactionSuccess = false;
// TODO "list"
// list digunakan untuk menyimpan kumpulan nilai dalam bentuk array atau daftar.
// List<String> purchaseItems = ["Pulpen", "Pensil", "Buku"];
// print(purchaseItems[1]);
// TODO "Map"
// map digunakan untuk menyimpan kumpulan nilai dalam bentuk pasangan key-value atau nilai kunci.
//   Map<String, dynamic> customerInfo = {
//     "name": "John Doe",
//     "address": "123 Main Street",
//     "age": 25,
//     "phone": "081234567890"
//   };
//   Map<String, dynamic> itemInfo = {
//     "id": 123,
//     "name": "Notebook",
//     "price": 5000.0,
//     "stock": 50 // m
//   };
// }

// void main() {
// TODO  Mendapatkan waktu saat ini dalam format tertentu
//   DateTime now = DateTime.now();
//   var formatter = DateFormat('dd/MM/yyyy HH:mm:ss', 'id');
//   String formattedDate = formatter.format(now);
//   print("Waktu saat ini: $formattedDate");

//   // Mendapatkan tanggal hari ini
//   TODO DateTime today = DateTime.now();
//   formatter = DateFormat('dd/MM/yyyy', 'id');
//   formattedDate = formatter.format(today);
//   print("Tanggal hari ini: $formattedDate");

//   // Membuat DateTime dengan nilai spesifik
//   TODO DateTime specificDate = DateTime(2023, 5, 8, 10, 30, 0);
//   formatter = DateFormat('dd/MM/yyyy HH:mm:ss', 'id');
//   formattedDate = formatter.format(specificDate);
//   print("Tanggal tertentu: $formattedDate");

//   // Menambahkan waktu tertentu ke DateTime
//   TODO DateTime later = now.add(const Duration(minutes: 30));
//   formatter = DateFormat('dd/MM/yyyy HH:mm:ss', 'id');
//   formattedDate = formatter.format(later);
//   print("Waktu setelah 30 menit: $formattedDate");

//   // Mengurangi waktu tertentu dari DateTime
//   TODO DateTime earlier = now.subtract(const Duration(hours: 2));
//   formatter = DateFormat('dd/MM/yyyy HH:mm:ss', 'id');
//   formattedDate = formatter.format(earlier);
//   print("Waktu 2 jam yang lalu: $formattedDate");

//   // Menghitung selisih waktu antara dua DateTime
//   TODO DateTime startTime = DateTime(2023, 5, 8, 10, 0, 0);
//   DateTime endTime = DateTime(2023, 5, 8, 11, 30, 0);
//   Duration duration = endTime.difference(startTime);
//   print(
//       "Durasi: ${duration.inHours} jam ${duration.inMinutes.remainder(60)} menit");

//   // Menampilkan tanggal dalam format tertentu
//   formatter = DateFormat('dd/MM/yyyy', 'id');
//   formattedDate = formatter.format(now);
//   print("Tanggal saat ini: $formattedDate");

//   // Menampilkan waktu dalam format tertentu
//   formatter = DateFormat('HH:mm:ss', 'id');
//   formattedDate = formatter.format(now);
//   print("Waktu saat ini: $formattedDate");

//   // Konversi DateTime ke UNIX timestamp
//   int unixTime = now.millisecondsSinceEpoch ~/ 1000;
//   print("Waktu saat ini (UNIX timestamp): $unixTime");
// }

// TODO 15 CONTOH UNTUK MENGKONVESI DATA
// void main() {
//  TODO Konversi string ke integer
//  String angkaString = "5";
//  int angka = int.parse(angkaString);
//  print(angka);
//  TODO Konversi string ke double
//  String angkaString = "5.5";
//  double angkaDouble = double.parse(angkaString);
//  print(angkaDouble);
//  TODO Konversi integer ke string
//  int angka = 5;
//  String angkaString = angka.toString();
//  print(angkaString);
//  TODO Konversi double ke string
//  double angkaDouble = 5.5;
//  String angka = angkaDouble.toString();
//  print(angka);
//  TODO Konversi string ke boolean
//  String booleanString = "True";
//  bool  booleanValue =  booleanString.toLowerCase() == "true";
//  print(booleanValue);
//  TODO Konversi integer ke double
//  int angka = 5;
//  double angkaDouble = angka.toDouble();
//  print(angkaDouble);
//  TODO Konversi double ke integer
//  double angka = 5.0;
//  int angkInt = angka.toInt();
//  print(angkInt);
//  TODO Konversi ke list set
//  Set<int> angkaSet = {1, 2, 3};
//  List<int> angkaList = angkaSet.toList();
//  print(angkaList);
//  TODO Konversi list ke stirin
// List<String> angkaList = ["1", "2", "3"];
// String angkaString = angkaList.join(", ");
// print(angkaString);
// TODO Konversi string ke dateTime
// String dateString = "2022-05-25";
// DateTime date = DateTime.parse(dateString);
// print(date);
// TODO Konversi string ke enum
// Weekday today = Weekday.Wednesday;
// if (today == Weekday.Saturday || today == Weekday.Sunday) {
//   print("It's the Wekkend");
// } else {
//   print("It's working day");
// }
// Fruits fruit = Fruits.banana;
// String fruitString = fruit.toString().split('.')[1];
// print(fruitString);

// Fruits fruits = Fruits.values
//     .firstWhere((e) => e.toString().split('.')[1] == fruitString);
// print(fruits);
// }

// TODO Operator dan Expasion
/*
  Operator merupakan simbol atau tanda khusus yang digunakan dalam program untuk melakukan operasi pada satu
  atau beberapa nilai atau variabel, pada bahasa pemograman Dart terdapat beberapa jenis operator yang dapat digunakan, 
  seperti contoh dibawah 
*/
void main() {
  // TODO Arithmetic Operators
  /*
      Operator ini digunakan untuk melakukan operasi matematika seperti penjumlahan,pengurangan,perkalian,dan pembagian.
  */
  int a = 20;
  int b = 5;

// Penjumlahan
  int sum = a + b; // Output: 15

// Pengurangan
  int difference = a - b; // Output: 5

// Perkalian
  int product = a * b; // Output: 50

// Pembagian
  double quotient = a / b; // Output: 2.0

  // TODO Relational Operators
  /*
      Operator ini digunakan untuk membandingkan dua nilai atau variabel dan mengembalikan nilai boolean berdasarkan hasil
      perbandingan.
  */
// Lebih besar dari
  bool isGreater = a > b; // Output: true

// Lebih kecil dari
  bool isLess = a < b; // Output: false

// Sama dengan
  bool isEqual = a == b; // Output: false

// Tidak sama dengan
  bool isNotEqual = a != b; // Output: true
  // TODO Logical Operators
  /*
      Operator ini digunakan untuk melakukan operasi logika seperti AND, OR, dan NOT pada nilai atau variabel boolean.
  */
  bool c = true;
  bool d = false;

// AND
  bool andResult = c && d; // Output: false

// OR
  bool orResult = c || d; // Output: true

// NOT
  bool notResult = !c; // Output: false

  // TODO Assignment Operators
  // Operator ini digunakan untuk memberikan nilai pada variabel
  a = 20; // Output: 20

// Menambahkan nilai baru pada variabel
  a += 5; // Output: 25

// Mengurangi nilai pada variabel
  a -= 5; // Output: 20

// Mengalikan nilai pada variabel
  a *= 2; // Output: 40

  // TODO Ternary Operators
  /* Ternary operator digunakan untuk mengevaluasi ekpresi bool dan memilih nilai yang berbeda tergantung pada apakah 
      ekspresi tersebut true atau false. ternary opeartor biasanya digunakan sebagai alternatif pendek untuk statement if-else.
   */
  /*
  (condition) ? expression1 : expression2
  */
  int ternaryA = 5;
  int ternaryB = 10;

  int max = (ternaryA > ternaryB) ? ternaryA : ternaryB;
  print(max);
  /*
  Jika condition bernilai true, maka nilai max akan sama dengan nilai ternaryA, namun jika false maka nilai max akan bernilai
  seperti ternaryB.
  */

  // TODO Cascade Operator
  /*
  Cascade operator adalah salah satu fitur yang memungkinkan kita untuk melakukan beberapa operasi pada objek yang sama dengan 
  cara yang lebih efisien dan mudah dibaca.
  */

  var cascadeMyList = [1, 2, 3];
  cascadeMyList.add(4);
  cascadeMyList.add(5);
  cascadeMyList.remove(5);
  print(cascadeMyList);

  // TODO IF Statement
  /*
  IF Statement atau conditional statement adalah konsep dasar dalam pemograman yang memungkinkan program untuk mengeksekusi perintah 
  tertentu berdasarkan kondisi tertentu. Dalam pemograman IF statement digunakan untuk mengevaluasi suati kondisi dan akan mengeksekusi 
  satu atau lebih perintah jika kondisi tersebut bernilai benar atau true.
  Format umum dari IF Statement ada dibawah ini :
  **
  if (kondisi) {
   blok kode yang akan dijalankan jika kondisi benar atau true
  } 
  **
  
  **Analogi IF Statement**

  1. Ketika kita memutuskan untuk membawa payung ketika melihat kondisi cuaca yang mendung.
  - Jika membawa payung, kita tidak kehujanan dan tetap kering saat berada di luar rumah.
  - Jika tidak membawa payung, kita akan kehujanan dan berisiko sakit karena basah kuyup.

  2. Ketika kita memutuskan untuk menyalakan lampu ketika memasuki ruangan yang gelap.
  - Jika menyalakan lampu, kita bisa melihat dengan jelas di dalam ruangan dan menghindari terjatuh atau terbentur benda-benda yang ada di dalamnya.
  - Jika tidak menyalakan lampu, kita akan kesulitan melihat di dalam ruangan dan berisiko terjatuh atau terbentur benda-benda yang ada di dalamnya.

  3. Ketika kita memutuskan untuk membaca panduan sebelum menggunakan suatu produk baru.
  - Jika membaca panduan, kita bisa menghindari kesalahan dalam penggunaan produk dan memaksimalkan manfaat dari produk tersebut.
  - Jika tidak membaca panduan, kita berisiko membuat kesalahan dalam penggunaan produk dan tidak bisa memaksimalkan manfaat dari produk tersebut.
  */

  // TODO Operator Perbandingan
  /*
    >   "Lebih besar dari"
    <   "Kurang dari"
    >=  "Lebih besar dari atau sama dengan"
    <=  "Kurang dari atau sama dengan"
    ==  "Sama dengan"
/   !=  "Tidak sama dengan"
  */

  // TODO Nested IF bersarang
  /*
  Nested IF adalah konstruksi yang memungkinkan kita untuk menyusun pernyataan IF di dalam blok IF lainnya. 
  Dalam struktur nested IF, blok kode satu IF ditempatkan di dalam blok kode lainnya. Dengan menggunakan nested IF, 
  kita dapat melakukan evaluasi kondisi yang lebih kompleks dengan beberapa tingkat kondisi terkait.
  **Contoh 1**
  if (kondisi1) {
   Blok kode IF pertama
  if (kondisi2) {
    Blok kode IF kedua
  } else {
    Blok kode ELSE kedua
  }
  } else {
    Blok kode ELSE pertama
  }
  **Batas Contoh 1**
  - Pada contoh di atas, kita memiliki blok IF pertama yang dimulai dengan **`if (kondisi1)`**. Blok ini akan dieksekusi jika kondisi1 bernilai true.
  - Dalam blok IF pertama, kita memiliki blok IF kedua yang dimulai dengan **`if (kondisi2)`**. Blok ini hanya akan dieksekusi jika kondisi2 bernilai true.
  - Jika kondisi2 pada blok IF kedua bernilai false, maka blok kode ELSE kedua akan dieksekusi.
  - Jika kondisi1 pada blok IF pertama bernilai false, maka blok kode ELSE pertama akan dieksekusi.
  */

  // TODO Looping
  /*
  Looping adalah teknik yang digunakan untuk mengulang sejumlah pernyataan atau blok kode berulang kali.
  Dalam bahasa pemograman Dart terdapat jenis loop yang dapat digunakan (for, while , do-while).
  Contoh (for) :
  1. Membaca buku adalah seperti melakukan loop, setiap kali membaca satu halaman atau satu bab, Anda bergerak maju kehalaman berikutnya lalu anda terus melanjutkanya
  proses membaca sehingga anda selesai atau memutuskan untuk berhenti. Analogi ini mirip dengan loop (for) dimana anda memilik inisialisasi(memulai membaca) kondisi 
  (melanjutkan membaca selama masih ada halaman yang tersedia) dan peningkatan (bergerak maju ke halaman berikutnya).
  Contoh (while) :
  1. Mengendarai sepeda adalah seperti melakukan (while), Anda terus mengayuh pedal sepeda (tindakan) selama kondisi tertentu terpenuhi, misalnya ketika jalan masih panjang
  atau ketika anda belum sampai ke tujuan. Anda melanjutkan perjalanan hingga kondisi berhenti terpenuhi, seperti mencapai tujuan atau kelelahan.
  Contoh (do-while) : 
  1. Menonton serial tv Anda mulai menonton episode pertama (tindakan) dan kemudian memutuskan apakah akan melanjutkan menonton episode berikutnya berdasarkan pada kondisi tertentu.
  Ands terus menonton episode demi episode hingga anda memutuskan untuk berhenti setelah mengevaluasi kondisib tersebut. 

  ## For Loop
  For loop adalah jenis loop yang umum digunakan dalam pemograman untuk mengulangi tugas atau operasi sejumlah kali, ini biasanya digunakan ketika kita tahu berapa kali iterasi
  yang akan dilakukukan.
  Sintaksis for loop dalam Dart sebagai berikut :
  ** 
 for (inisialisasi ; kondisi; perubahan_nilai) {
/   blok kode yang akan diulang
 }
  **
  - inisialisasi adalah bagian di mana kita menginisialisasi variabel loop sebelum memulai iterasi, ini biasanya digunakan untuk mengatur nilai awal variabel penghitung.
  - kondisi adalah kondisi yg di evaluasi sebelum setiap iterasi, jika kondisi bernilai true iterasi akan berlanjut dan jika iterasi bernilai false loop akan berhenti.
  - perubahan_nilai adalah bagian dimana kita mengubah nilai variabel penghitung setelah setiap iterasi, biasanya digunakan meningkatkan atau mengurangi nilai penghitung.
  Contohnya :
  for (int i = 0; i < 5; i++) {
   print(i);
  } 
  Outputnya :
  0
  1
  2
  3
  4
  Pada contoh di atas, loop akan dijalankan mulai dari i = 0 hingga i < 5. Pada setiap iterasi, nilai i akan dicetak, dan setelah itu nilai i akan meningkat sebesar 1.
  */
}

enum Weekday { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

enum Fruits { apple, banana, cherry }

// TODO contoh penggunaan operator logika pada IF Statement di Dart :
void IFstatement() {
  int x = 5;
  int y = 10;
  if (x > 3 && y < 15) {
    print("Nilai x lebih besar dari 3 dan nilai y kurang 15");
  }
}

// TODO Penggunaan operator perbandingan pada IF statement di Dart :
void IFstatement2() {
  int x = 5;
  if (x > 3) {
    print("Nilai x lebih besar dari 3");
  }
}
