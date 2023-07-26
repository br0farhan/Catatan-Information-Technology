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
  
}

enum Weekday { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

enum Fruits { apple, banana, cherry }