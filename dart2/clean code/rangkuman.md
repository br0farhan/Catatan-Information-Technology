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