# Clean Code di Dart

### Apa itu Clean Code?

Clean Code adalah kode program yang ditulis dengan cara yang mudah dipahami, terorganisir dengan baik, efisien, efektif, mudah dibaca dan mudah untuk dipelihara.

### Kenapa Clean Code Penting?

1. Memudahkan pengembangan dan pemeliharaan kode program. Kode yang bersih dan terorganisir dapat membantu mengurangi waktu yang dibutuhkan untuk mengembangkan dan memelihara kode program.
2. Meningkatkan efisiensi dan kualitas kode. Clean Code dapat membantu meningkatkan efisiensi dan kualitas kode, karena kode yang bersih dan mudah dipelihara lebih mudah untuk diuji dan dioptimalkan.
3. Memudahkan kolaborasi dan sharing. Clean Code memudahkan kolaborasi antar tim pengembang dan memudahkan sharing kode antara proyek dan organisasi yang berbeda.

### **Naming**

Agar kode kita lebih mudah dibaca dan dipahami, penamaan variabel, class dan method-nya haruslah benar. Mengenai aturan penamaan, kamu bisa mengikuti aturan-aturan dibawah ini:

1. **Gunakan nama yang deskriptif**

Penamaan variabel, fungsi, dan kelas harus mencerminkan fungsinya dengan jelas. Hindari penggunaan nama yang ambigu atau terlalu singkat yang dapat membingungkan pembaca kode. Contoh:

Kode yang buruk:

```dart
double n;
int x;
String s;
```

Kode yang lebih baik:

```dart
double totalAmount;
int numberOfItems;
String customerName;
```

2. **Gunakan penamaan yang konsisten**

Penamaan harus konsisten dalam seluruh kode program, baik itu dalam hal penggunaan huruf besar-kecil, pemisahan kata dengan garis bawah atau tanpa garis bawah, dan sebagainya. Hal ini akan memudahkan pembaca untuk memahami kode program. Contoh:

Kode yang buruk:

```dart
double total_amount;
int Number_of_items;
String CustomerName;

Map product = {
  "product_name": "KP LIONG GULA",
  "PRICE": 15000,
  "productCategory": "Kopi"
};
```

Kode yang lebih baik:

```dart
double totalAmount;
int numberOfItems;
String customerName;

Map product = {
  "product_name": "KP LIONG GULA",
  "price": 15000,
  "product_category": "Kopi"
};
```

3. **Gunakan nama yang mudah diucapkan dan dituliskan**

Nama yang mudah diucapkan dan dituliskan akan memudahkan komunikasi dan kolaborasi antara pengembang. Contoh:

Kode yang buruk:

```dart
double totAmt;
int nbrItems;
String custNm;

// Jangan Alay!
// Tim kamu bukan Alien!
```

Kode yang lebih baik:

```dart
double totalAmount;
int numberOfItems;
String customerName;
```

4. **Gunakan nama yang spesifik**

Nama variabel, fungsi, dan kelas harus spesifik dan terkait dengan tugas yang dijalankan. Hindari penggunaan nama yang terlalu umum atau generik. 

Contoh:

```dart
Map data;
```

Kode yang lebih baik:

```dart
Map product;
Map customer;
List customers = [];
```

5. **Gunakan prefix untuk function**

Function seharusnya mengunakan prefix di depannya sesuai dengan tujuan dari function tersebut. Function yang tidak memiliki prefix akan sulit dipahami dan bisa menyebabkan multi tafsir.

Kode yang buruk:

```dart
customer(){} 
product(){}
user(){}
/*
Fungsi di atas tidak jelas tujuannya, 
apakah untuk mengambil data? 
ataukah untuk menambahkan atau menghapus data?
*/
```

Kode yang lebih baik:

```dart
getCustomer(){}
addCustomer(){}
deleteCustomer(){}
updateCustomer(){}
/*
Penamaan menggunakan prefix get seperti di atas,
Akan lebih mudah dipahami dan kita tidak akan memperdebatkan
Apakah function di atas untuk mengambil data customer atau 
menambahkan data customer
*/
```

6. **Gunakan prefix yang konsisten**

Kode yang buruk:

```dart
getCustomers(){}
fetchProducts(){}
takeUsers(){}

/*
Jika kamu terbiasa menggunakan prefix get,
Maka konsitenlah gunakan get.
Jangan tiba2 menggunakan fetch ataupun take.
Karena keduanya memiliki arti yang sama.
*/
```

Kode yang lebih baik:

```dart
getCustomers(){}
getProducts(){}
getUsers(){}
```

7. **Penamaan List haruslah menggunakan nama yang plural, bukan singular!**

Bisa dipastikan, bahwa sebuah List bisa memiliki nilai lebih dari satu. Oleh karena-nya sebaiknya jangan menamakan List dengan nama singular. 
Contoh yang buruk:

```dart
List product = [];
List customer = [];
```

Contoh yang lebih baik:

```dart
List products = [];
List customers = [];

// atau
// nama + list

List productList = [];
List customerList = [];
```

8. **Jangan berlebihan dalam memberikan nama**

Berikan nama yang singkat dan jelas. Tidak terlalu pendek dan tidak juga terlalu panjang. Dan juga tidak boleh berlebihan.

Contoh yang buruk:

```dart
String stringOfProductName;
int ageOfMyLife;
double priceOfProduct;

addProductWithHttpRequest(){}
getProductFromHttpRequestWithDioAndGetResponse(){}
```

Contoh yang lebih baik:

```dart
String productName;
int age;
double price;

addProduct(){}
getProduct(){}
```

9. **Nama fungsi harus sesuai dengan tujuanya!**

Nama sebuah function haruslah mewakili isi-nya. Penamaan harus sesuai dan tepat agar tim kita bisa cepat memahami kode yang kita buat.

Contoh yang buruk:

```dart
getProduct() async {
   var users = await Dio().get("/users");
	return users;
}
```

Contoh yang lebih baik:

```dart
getUsers() async {
   var users = await Dio().get("/users");
	return users;
}
```

10. **Hindari menggunakan komentar untuk menjelaskan sebuah function, variabel maupun Class**

Cukup berikan nama yang jelas, maka rekan tim kamu akan paham.

Contoh yang buruk:

```dart
//ini adalah function untuk menambahkan data customer
customer(Customer customer){}
```

Contoh yang lebih baik:

```dart
addCustomer(Customer customer){} 
```

Tapi diberikan komentar, kita sudah tau bahwa function di atas untuk menambahkan data customer.

11. **Terapkan SRP**

SRP (Single Responbility Principle) adalah salah satu prinsip dalam clean code yang mengatakan bahwa setiap class
atau method seharusnya memiliki satu dan hanya satu tanggung jawab. Berikut adalah contoh kode yang tidak menerapkan SRP:

```dart

class ProductController {
    void addProduct(Map product){}
    void deleteProduct(Map product){}
    void updateProduct(Map product){}
    List productgetProducts(){}

    void addCustomer(Map product){}
    void deleteCustomer(Map product){}
    void updateCustomer(Map product){}
    List getCustomers(){}
}
```

Class di atas tidak menerapkan SRP. Class ProductController, seharusnya hanya mengelola data yang terkait dengan produk saja.
tidak boleh sekaligus mengelola data customer, seharusnya kodenya seperti ini:

```dart
class ProductController {
    void addProduct(Map product){}
    void deleteProduct(Map product){}
    void updateProduct(Map product){}
    List getProducts(){}
}

class CustomerController {
    void addCustomer(Map product){}
    void deleteCustomer(Map product){}
    void updateCustomer(Map product){}
    List getCustomers(x){}
}
```

12. **Terapkan KISS**

KISS (Keep It Simple, Stupid) adalah prinsip dalam Clean Code yang mengatakan bahwa kode seharusnya sederhana dan mudah dipahami. Berikut adalah contoh kode yang tidak menerapkan KISS:

```dart
class UserService {
  bool checkUserCredentials(String username, String password) {
    // logic untuk validasi username dan password
    if (username.isNotEmpty && password.isNotEmpty) {
      if (username == "admin" && password == "password") {
        return true;
      }
    }
    return false;
  }
}
```

Kode yang lebih baik:

```dart
class UserService {
  bool checkUserCredentials(String username, String password) {
    // logic untuk validasi username dan password
    if (validateUsername(username) && validatePassword(password)) {
      return true;
    }
    return false;
  }
 
  bool validateUsername(String username) {
    // logic untuk validasi username
    if (username.isNotEmpty && username == "admin") {
      return true;
    }
    return false;
  }
 
  bool validatePassword(String password) {
    // logic untuk validasi password
    if (password.isNotEmpty && password == "password") {
      return true;
    }
    return false;
  }
}
```

13. **Terapkan DRY***

DRY dalam konteks Clean Code adalah menerapkan prinsip "Don't Repeat Yourself" dalam setiap aspek, termasuk dalam penggunaan nama variabel, fungsi, dan kelas, serta penggunaan teknik atau algoritma yang sama pada beberapa bagian kode yang berbeda.

Kode yang buruk:

```dart
import 'package:intl/intl.dart';

void main() {
  double price1 = 15000.0;
  double price2 = 25000.0;

  var formatter = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
  String formattedPrice1 = formatter.format(price1);
  String formattedPrice2 = formatter.format(price2);

  print(formattedPrice1);
  print(formattedPrice2);
}
```

Kode yang lebih baik:

```dart
import 'package:intl/intl.dart';

void main() {
  double price1 = 15000.0;
  double price2 = 25000.0;

  String formattedPrice1 = price1.idr;
  String formattedPrice2 = price2.idr;

  print(formattedPrice1);
  print(formattedPrice2);
}

extension DoubleExtensions on double {
  String get idr {
    var formatter = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
    return formatter.format(this);
  }
}
```

14. **Gunakan nama sesuai dengan Architecture yang kamu gunakan!**

Penamaan class harus sesuai dengan Architecture yang kamu gunakan.
Bahkan meskipun kamu mengcopy kode tersebut dari sumber yang sangat terpecaya. 

Misalnya, kamu menggunakan Architecture **MVC**, dimana halaman pada Aplikasi seharusnya menggunakan akhiran **View** dibelakangnya.

Contoh yang buruk:

```dart
class HomeScreen {
  @override
	Widget build(BuildContext context){
     ...
  }
}

class HomePage{
  @override
	Widget build(BuildContext context){
     ...
  }
}

class HomeBlocPage{
  @override
	Widget build(BuildContext context){
     ...
  }
}

class HomeGetView{
  @override
	Widget build(BuildContext context){
     ...
  }
}

class HomeProviderView{
  @override
	Widget build(BuildContext context){
     ...
  }
}
```

Penamaan harus mengikuti architecture yang kamu gunakan. 
Tidak perlu menambahkan penamaan terkait state management atau menggunakan prefix yang tidak perlu seperti **HomeGetView**.

Seharusnya pada contoh di atas, jika kamu menggunakan MVC maka nama class-nya adalah:

```dart
class HomeView{
  @override
	Widget build(BuildContext context){
     ...
  }
}
```

15. **Jangan gunakan bahasa indonesia pada kodemu**

Jangan pernah menggunakan bahasa Indonesia untuk memberikan nama pada variabel, function maupun class. Karena itu akan menyebabkan kode-mu memiliki dua bahasa dan akan menyebabkan kebingungan dan ketidak konsistenan ke depannya. Atau bahkan kamu akan mencampur nama method-nya dengan bahasa inggris + indonesia.

Contoh yang buruk:

```dart
getPelanggan(){}
addPelanggan(){}
ambilPelanggan(){}
ambilDataPelanggan(){}
```

Contoh yang lebih baik:

```dart
getCustomer(){}
```

