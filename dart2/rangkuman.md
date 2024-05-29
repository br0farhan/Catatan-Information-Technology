<style>
.merah {
    color: red;
}

</style>

### Encapsulation 
Encapsulation bertujuan untuk `menyembunyikan detail internal kelas` dan `membatasi akses langsung ke data dan metode kelas tersebut`, Encapsulation membantu dalam membangun kode yang lebih modular, maintenable, dan aman.

#### Private
Private adalah sebuah kata kunci yang digunakan untuk menyembunyikan anggota kelas dari akses langsung dari luar kelas tersebut.

Keuntungan penggunaan private adalah ??
- Memproteksi data : variabel private tidak dapat diakses atau dimodifikasi langsung dari luar kelas.
```dart
class ProductController {
   _getProducts(){}
} 

//_getProducts tidak bisa di akses seperti ini:
ProductController productController = ProductController();
productController._getProducts();
// karena _getProducts adalah private method
```

#### Public
Public adalah kata kunci yang digunakan untuk memberikan akses terbuka kepada anggota kelas.

Keuntungan penggunaan public adalah ??
- Akses data penggunaan : dapat diakses oleh kode lain dan digunakan untuk mengakses atau memodifikasi data dan menjalankan metode dari objek yang sesuai.

- Peningkatan fleksibilitas : Public memberikan fleksibilitas dalam penggunaan kelas dan memungkinkan berinteraksi dengan kode lain yang terkait.
```dart
class ProductController {
   getProducts(){}
} 

//getProducts bisa di akses seperti ini:
ProductController productController = ProductController();
productController.getProducts();
// karena getProducts adalah public method
```

### <span class= 'merah'>Info Penting </span>
Private di Dart hanya tidak bisa di akses pada file yang terpisah.

Nyatanya jika kamu membuat method private tapi itu masih ada pada file yang sama, kamu masih bisa mengaksesnya.

### Abstraction
Dengan menggunakan metode abstraction kita dapat membuat sebuah interface atau kontrak yang harus dipenuhi oleh kelas kelas 
yang akan mengimplementasikan interface tersebut.


Contoh Abstraction ??

Disini kita membuat kontrak untuk kelas repository. Dimana, setiap class Repository nantinya akan menerapkan kontrak CRUDRepository. Dimana ia harus mengimplementasikan method findAll, findById, save, dan deleteById.

**Tujuan:**

1. Menghindari user membuat method baru dengan penamaan yang berbeda. Misalnya, method **save()** diganti dengan method **simpan()**. Sehingga penulisan kodenya akan jauh lebih konsisten.
2. Memaksa user untuk membuat repository sesuai dengan apa yang sudah kita tentuan pada interface **CRUDRepository**.
```dart
abstract class CRUDRepository<T> {
  Future<List<T>> findAll();
  Future<T> findById(int id);
  Future<T> save(T data);
  Future<void> deleteById(int id);
}

class UserRepository implements CRUDRepository<User> {
  List<User> _users = [
    User(1, "John Doe", "johndoe@example.com"),
    User(2, "Jane Smith", "janesmith@example.com"),
    User(3, "Bob Williams", "bobwilliams@example.com"),
  ];

  @override
  Future<List<User>> findAll() async {
    return _users;
  }

  @override
  Future<User> findById(int id) async {
    return _users.firstWhere((user) => user.id == id);
  }

  @override
  Future<User> save(User data) async {
    int index = _users.indexWhere((user) => user.id == data.id);

    if (index >= 0) {
      _users[index] = data;
    } else {
      _users.add(data);
    }

    return data;
  }

  @override
  Future<void> deleteById(int id) async {
    _users.removeWhere((user) => user.id == id);
  }
}

class User {
  int id;
  String name;
  String email;

  User(this.id, this.name, this.email);
}

void main() async {
  UserRepository userRepository = UserRepository();

  // Menampilkan semua data user
  List<User> users = await userRepository.findAll();
  users.forEach((user) {
    print("ID: ${user.id}, Name: ${user.name}, Email: ${user.email}");
  });

  // Menampilkan data user dengan ID tertentu
  int userId = 2;
  User user = await userRepository.findById(userId);
  print("ID: ${user.id}, Name: ${user.name}, Email: ${user.email}");

  // Menambah atau mengupdate data user
  User newUser = User(4, "Adam Johnson", "adamjohnson@example.com");
  await userRepository.save(newUser);
  users = await userRepository.findAll();
  users.forEach((user) {
    print("ID: ${user.id}, Name: ${user.name}, Email: ${user.email}");
  });

  // Menghapus data user dengan ID tertentu
  int deletedUserId = 1;
  await userRepository.deleteById(deletedUserId);
  users = await userRepository.findAll();
  users.forEach((user) {
    print("ID: ${user.id}, Name: ${user.name}, Email: ${user.email}");
  });
}
```

### Mixin
Mixin adalah konsep dalam pemrograman berorientasi objek yang meungkinkan class untuk mendapatkan sifat dan perilaku dari class lain tanpa harus melakukan inheritance.

```dart
mixin Swimming {
  void swim() {
    print('Swimming...');
  }
}

mixin Flying {
  void fly() {
    print('Flying...');
  }
}

class Duck with Swimming, Flying {
  // kode kelas
}

void main() {
  Duck duck = Duck();
  duck.swim(); // output: Swimming...
  duck.fly(); // output: Flying...
}
```

### Penerapan OOP

**Utillity Class**

Kelas Utility adalah kelas yang biasanya digunakan untuk menyimpan fungsi-fungsi yang terkait dengan logika bisnis atau fungsi-fungsi umum yang sering digunakan di seluruh aplikasi. Pada OOP, kelas Utility biasanya didefinisikan sebagai kelas statis dan hanya memiliki metode dan variabel statis.

Berikut adalah 10 contoh kelas Utility yang sering dibuat dengan OOP:

1. **`StringUtils`**: kelas ini berisi fungsi-fungsi untuk memanipulasi string, seperti menggabungkan beberapa string, memotong string, atau mengubah format string.
2. **`DateUtils`**: kelas ini berisi fungsi-fungsi untuk memanipulasi tanggal dan waktu, seperti mengubah format tanggal, menghitung selisih waktu, atau mengubah zona waktu.
3. **`FileUtils`**: kelas ini berisi fungsi-fungsi untuk memanipulasi berkas, seperti membaca atau menulis berkas, atau mengubah hak akses berkas.
4. **`MathUtils`**: kelas ini berisi fungsi-fungsi matematika, seperti menghitung nilai maksimum atau minimum, mengubah nilai bilangan, atau menghitung operasi matematika dasar.
5. **`HttpUtils`**: kelas ini berisi fungsi-fungsi untuk mengirim atau menerima permintaan HTTP, seperti GET, POST, PUT, atau DELETE.
6. **`EncryptionUtils`**: kelas ini berisi fungsi-fungsi untuk enkripsi dan dekripsi data, seperti mengenkripsi password atau menghasilkan hash dari data.
7. **`ValidationUtils`**: kelas ini berisi fungsi-fungsi untuk validasi data, seperti memeriksa apakah suatu nilai string adalah email yang valid atau apakah nilai angka di dalam rentang tertentu.
8. **`CollectionUtils`**: kelas ini berisi fungsi-fungsi untuk memanipulasi koleksi data, seperti mengurutkan, mencari, atau memfilter data dalam daftar atau array.
9. **`IOUtils`**: kelas ini berisi fungsi-fungsi untuk memanipulasi input dan output, seperti membaca atau menulis ke stream atau koneksi.
10. **`EmailUtils`**: kelas ini berisi fungsi-fungsi untuk mengirim email, seperti mengirim email dengan attachment atau email yang terjadwal.

# OOP

### **Definisi**

**OOP (Object-Oriented Programming**) adalah paradigma (sudut pandang) pemrograman yang menggunakan objek sebagai dasar dari pemrograman. Dalam OOP di Dart, data dan fungsi dibungkus dalam objek yang merupakan instansi dari suatu kelas.

### **Class**

Kelas (**Class**) adalah konsep utama dalam pemrograman berorientasi objek (OOP) di Dart. Kelas berfungsi sebagai blueprint atau template untuk membuat **objek**. **Objek** adalah instance dari sebuah kelas atauk bentuk nyata dari sebuah Class.

### Perbedaan Class dan Object

Class bisa dianalogikan seperti denah rumah atau blueprint rumah.

**Class = Denah Rumah / Blueprint**

Object = Rumah

Sedangkan **Object** adalah **Rumah** itu sendiri ketika kita sudah membangunnya. Satu class bisa digunakan untuk banyak Objek. Sama seperti denah rumah, satu denah rumah bisa digunakan untuk membuat banyak rumah sekaligus.

Dalam Dart, sebuah kelas dapat memiliki beberapa komponen, yaitu:

1. **Property**
Property adalah variabel yang berada di dalam kelas dan digunakan untuk menyimpan data pada objek. **Property** dapat diakses dan dimodifikasi melalui metode kelas.
    
    ```jsx
    class Product {
        String productName;
    		double price;
    }
    
    class ProductCategory {
        String productCategoryName;
    }
    ```
    
2. **Method**
**Method** adalah fungsi yang terkait dengan kelas dan dapat diakses melalui objek yang berasal dari kelas tersebut. Metode dapat digunakan untuk melakukan operasi pada atribut kelas atau mengembalikan nilai.
    
    ```jsx
    class ProductController {
    		createProduct() {}
        updateProduct() {}
        getProducts() {}
    }
    ```
    
3. **Constructor**
Constructor adalah fungsi yang digunakan untuk menginisialisasi objek ketika objek dibuat dari kelas. Constructor memiliki nama yang sama dengan nama kelas dan dapat memiliki parameter.
    
    ```jsx
    class Product {
       Product() {
           
       }
    }
    ```
    
    ```jsx
    class Product {
       final productName;
       Product({
          required this.productName,
       });
    }
    ```
    
4. **Getter dan Setter**
Getter dan setter adalah metode khusus yang digunakan untuk mengakses dan memodifikasi nilai atribut kelas.
    
    ```jsx
    class User {
       String firstName;
       String lastName;
    
       User(){
           print("Object created");
       }
    
       String get fullName {
          return "${firstName} ${lastName}";
       }
    }
    
    User user = User();
    print(user.firstName + user.lastName);
    print(user.fullName);
    ```
    
    ```jsx
    class Product {
    	  double get discount {}
    }
    
    Product product = Product();
    print(product.discount);
    ```
    
    ```jsx
    class Product {
    	  double set price(double value) {}
    }
    
    Product product = Product();
    product.price = 25;
    ```
    

**Untuk Mentor:**

Cari source code Flutter di GitHub,
Dan tunjukkan mana itu property, constructor dan mana yang disebut method.

### **5 Tujuan Penerapan OOP (Object-Oriented Programming):**

1. **Modularitas**
Tujuan utama dari OOP adalah memperbaiki modularitas kode. Dengan memecah kode menjadi objek dan kelas yang terpisah, kita dapat membuat kode yang lebih mudah diorganisir, diuji, dan dikelola.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/336f4cdf-3ccd-4cd5-8c20-58ebdfd68549/Untitled.png)
    
2. **Reusabilitas**
OOP memungkinkan pengembang untuk membuat kelas dan objek yang dapat digunakan kembali di berbagai bagian aplikasi. Ini dapat mempercepat pengembangan aplikasi dan mengurangi jumlah kode yang harus dikembangkan.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ae7b4382-e1e8-4acf-ab24-19268913c44e/Untitled.png)
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e69da481-7198-4df8-ba4c-81ca577e0554/Untitled.png)
    
3. **Fleksibilitas**
OOP memungkinkan pengembang untuk menambahkan atau mengubah fitur pada kode dengan lebih mudah dan efisien. Hal ini memungkinkan aplikasi untuk beradaptasi dengan perubahan dan kebutuhan bisnis yang berubah-ubah.
4. **Keamanan**
OOP dapat membantu memperkuat keamanan kode dengan mengurangi kemungkinan kesalahan dan membatasi akses ke data dan metode yang penting.
5. **Skalabilitas**
OOP memungkinkan pengembang untuk membuat aplikasi yang dapat dengan mudah dikembangkan dan disesuaikan dengan pertumbuhan bisnis atau jumlah pengguna. Kode yang dibangun dengan OOP dapat dengan mudah diperluas dan disesuaikan untuk menangani lebih banyak fitur atau volume data yang lebih besar.

---

Berikut adalah contoh beberapa kelas yang dapat dibuat pada aplikasi Dart:

1. **User**
Kelas User berfungsi untuk menyimpan informasi tentang pengguna seperti nama, alamat email, dan kata sandi.

```dart
class User {
  String name;
  String email;
  String password;

  User(this.name, this.email, this.password);
}
```

1. **Product**
Kelas Product berfungsi untuk menyimpan informasi tentang produk seperti nama, harga, dan jumlah stok.

```
class Product {
  String name;
  double price;
  int stock;

  Product(this.name, this.price, this.stock);
}
```

1. **Order**
Kelas Order berfungsi untuk menyimpan informasi tentang pesanan seperti daftar produk, jumlah produk yang dipesan, dan total harga.

```dart
class Order {
  List<Product> products;
  List<int> quantities;

  Order(this.products, this.quantities);

  double getTotalPrice() {
    double totalPrice = 0;
    for (int i = 0; i < products.length; i++) {
      totalPrice += products[i].price * quantities[i];
    }
    return totalPrice;
  }
}
```

## **Inheritance**

Inheritance (Pewarisan) adalah konsep dalam pemrograman berorientasi objek (OOP) di Dart, dimana kelas baru (kelas turunan) dapat diturunkan dari kelas yang sudah ada (kelas induk atau superclass). Kelas turunan akan mewarisi atribut dan metode dari kelas induknya, sehingga dapat menggunakannya atau menambahkan metode atau atribut tambahan yang spesifik untuk kelas tersebut.

Pewarisan dalam Dart dapat dilakukan dengan menggunakan kata kunci **`extends`**. Berikut adalah contoh sederhana penggunaan pewarisan dalam Dart:

```dart
class Animal {
  String name;
  String color;
  int age;

  Animal(this.name, this.color, this.age);

  void eat() {
    print("$name is eating.");
  }

  void sleep() {
    print("$name is sleeping.");
  }
}

class Cat extends Animal {
  int lives;

  Cat(String name, String color, int age, this.lives) : super(name, color, age);

  void meow() {
    print("$name says meow.");
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, String color, int age, this.breed) : super(name, color, age);

  void bark() {
    print("$name says woof.");
  }
}

void main() {
  Cat cat = Cat("Whiskers", "black", 3, 9);
  Dog dog = Dog("Rex", "brown", 5, "Golden Retriever");

  cat.eat(); // Output: Whiskers is eating.
  dog.sleep(); // Output: Rex is sleeping.

  cat.meow(); // Output: Whiskers says meow.
  dog.bark(); // Output: Rex says woof.
}
```

## Constructor Parameter

Dalam bahasa pemrograman Dart, constructor parameter digunakan untuk menginisialisasi objek saat objek tersebut dibuat. Constructor adalah metode khusus yang memiliki nama yang sama dengan kelas dan digunakan untuk membuat objek baru dari kelas tersebut.

Parameter dalam constructor digunakan untuk menerima nilai dan menginisialisasi properti atau variabel dalam kelas. Dengan menggunakan constructor parameter, Anda dapat menyediakan nilai awal saat membuat objek, sehingga membuat kode lebih efisien dan lebih mudah dibaca.

**Membuat Constructor dengan Positional Parameter dan Named Parameter**

Dalam Dart, terdapat dua jenis constructor parameter, yaitu **positional parameter** dan **named parameter**

### **Positional Parameter:**

- Dalam parameter positional, nilai diteruskan ke constructor berdasarkan urutan posisi parameter yang didefinisikan.
- Untuk membuat constructor dengan parameter positional, Anda dapat menambahkan parameter di dalam tanda kurung setelah nama constructor.
- Contoh penggunaan constructor dengan parameter positional:

```jsx
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  var person = Person('John Doe', 25);
  print('Name: ${person.name}, Age: ${person.age}');
}
```

### **Named Parameter**:

- Dalam **named parameter**, setiap nilai diberikan berdasarkan nama parameter yang ditentukan.
- Untuk membuat constructor dengan **named parameter**, Anda dapat menggunakan tanda kurung kurawal dan menentukan nama parameter di dalamnya.
- Contoh penggunaan constructor dengan parameter named:
    
    ```jsx
    class Person {
      String name;
      int age;
    
      Person({required this.name, required this.age});
    }
    
    void main() {
    // var person = Person('John Doe', 25);
      var person = Person(name: 'John Doe', age: 25);
      print('Name: ${person.name}, Age: ${person.age}');
    }
    ```
    

### **Default Parameter dan Optional Parameter**

Dart juga mendukung penggunaan parameter default dan optional dalam constructor.

**Default Parameter**:

- Dalam **default parameter**, Anda dapat memberikan nilai default kepada parameter tersebut. Jika tidak ada nilai yang diberikan saat membuat objek, maka nilai default tersebut akan digunakan.
- Contoh:
    
    ```jsx
    class Person {
      String name;
      int age;
    
      Person({
    		required this.name = 'Unknown', 
    		required this.age = 0
    	});
    }
    
    void main() {
      var person1 = Person();
      print('Name: ${person1.name}, Age: ${person1.age}');
    
      var person2 = Person(name: 'John Doe', age: 25);
      print('Name: ${person2.name}, Age: ${person2.age}');
    
      var person3 = Person(); //x
      var person4 = Person(name : "Alex"); //x
    }
    ```
    

**Optional Parameter**

- Dalam parameter optional, Anda dapat memberikan tanda tanya (?) setelah tipe data parameter untuk membuatnya menjadi opsional.
- Contoh penggunaan constructor dengan parameter optional:
    
    ```jsx
    class Person {
      String name;
      int? age;
    
      Person({
    		required this.name = 'Unknown', 
    		this.age
    	});
    
    	// age! * 2;
    	// age ?? 0 * 2;
    }
    
    void main() {
      var person1 = Person();
      print('Name: ${person1.name}, Age: ${person1.age}');
    
      var person2 = Person(name: 'John Doe', age: 25);
      print('Name: ${person2.name}, Age: ${person2.age}');
    
      var person3 = Person(); //x
      var person4 = Person(name : "Alex"); //v
    }
    ```
    
    ```jsx
    class Person {
      String name;
      int age;
    
      Person({
    		required this.name = 'Unknown', 
    		this.age = 2,
    	});
    }
    
    void main() {
      var person1 = Person();
      print('Name: ${person1.name}, Age: ${person1.age}');
    
      var person2 = Person(name: 'John Doe', age: 25);
      print('Name: ${person2.name}, Age: ${person2.age}');
    
      var person3 = Person(); //x
      var person4 = Person(name : "Alex"); //v
    }
    
    // age * 2;
    // age * 2;
    ```
    

# Static

**Pengertian dan Penggunaan kata kunci "static" dalam Dart**

Kata kunci "**static**" dalam Dart digunakan untuk mendefinisikan variabel atau metode yang terkait dengan kelas itu sendiri, bukan dengan objek individu yang dibuat dari kelas tersebut. **Dengan kata lain, variabel atau metode static dapat diakses langsung melalui kelas**, **tanpa perlu membuat objek dari kelas tersebut.**

Penggunaan kata kunci "static" memiliki beberapa manfaat, antara lain:

1. **Berbagi Nilai**: Variabel static digunakan untuk menyimpan nilai yang bersifat umum bagi semua objek yang dibuat dari kelas tersebut. Jika nilai variabel static diubah, perubahan akan terlihat oleh semua objek.
2. **Akses Tanpa Objek**: Method static dapat dipanggil langsung melalui kelas, tanpa perlu membuat objek. Hal ini berguna ketika Anda ingin menjalankan suatu logika yang terkait dengan kelas itu sendiri, bukan dengan objek individu.
    
    ```jsx
    class ProductController {
       static String? productName;
       static create() {}
    
       int? price;
       update(){}
    }
    
    ProductController.productName
    ProductController.create();
    // Tidak perlu membuat Object dengan ProductController();
    
    ProductController().price;
    ProductController().update();
    ```
    

Jika kamu melihat sebuah property atau method yang dipanggil dengan format seperti ini:

```jsx
NamaClass.property
NamaClass.methodName()
```

Bisa dipastikan bahwan property maupun method -nya adalah static.
Contoh yang sering kita lihat di Flutter.

```jsx
Platform.isAndroid
Platform.isIos
FirebaseAuth.instance
Get.to
```

### Late

**Pengertian dan Penggunaan kata kunci "late" dalam Dart**

Kata kunci "late" dalam Dart digunakan untuk mendeklarasikan variabel yang akan diinisialisasi nanti, yaitu saat runtime, bukan saat deklarasi. Dengan kata lain, "late" digunakan untuk menunda inisialisasi variabel hingga titik waktu tertentu, biasanya saat nilai yang diharapkan tersedia atau dapat dihitung.

Penggunaan "late" memiliki beberapa manfaat, antara lain:

1. **Null Safety**: Variabel yang dideklarasikan dengan "late" secara otomatis akan menjadi non-null, karena **Anda berjanji bahwa nilai akan diinisialisasi sebelum variabel tersebut digunakan.**
2. **Inisialisasi Tertunda**: Dengan menggunakan "late", Anda dapat menunda inisialisasi variabel hingga saat runtime, memberikan fleksibilitas dalam mengatur logika dan alur program.

**Contoh Penerapan Late:**

```jsx
class MyClass {
  late String name;
  
  MyClass () {
    name = 'John Doe'; // Inisialisasi variabel late
    print('Name: $name');
  }
   // saveName(name); Function(String)
}

void main() {
  var myObject = MyClass();
  myObject.initialize();
}
```

### Final

**Pengertian dan Penggunaan kata kunci "final" dalam Dart**

Kata kunci "final" dalam Dart digunakan untuk mendeklarasikan variabel yang nilainya tidak dapat diubah setelah diinisialisasi. Setelah nilai final diatur, tidak dapat diubah lagi. Dalam Dart, variabel final harus diinisialisasi pada saat deklarasi atau dalam konstruktor.

Penggunaan "final" memiliki beberapa manfaat, antara lain:

1. **Immutability**: Variabel yang dideklarasikan sebagai "final" bersifat tidak dapat diubah (immutable). Ini memastikan bahwa nilai variabel tidak berubah setelah diinisialisasi.
2. **Keamanan**: Dengan menggunakan "final", Anda dapat melindungi nilai dari perubahan yang tidak disengaja atau tidak diinginkan. Hal ini dapat membantu mencegah kesalahan atau bug yang disebabkan oleh perubahan nilai variabel.

**Variabel Final dan Konstanta Final**

1. **Variabel Final**: Variabel final adalah variabel yang nilainya tidak dapat diubah setelah diinisialisasi. Nilai variabel final dapat ditetapkan pada saat deklarasi atau dalam konstruktor. Variabel final tidak harus memiliki nilai konstan pada waktu kompilasi.
2. **Konstanta Final**: Konstanta final adalah variabel yang dideklarasikan sebagai final dan memiliki nilai yang harus diketahui pada waktu kompilasi. Konstanta final biasanya digunakan untuk menyimpan nilai yang tetap dan tidak berubah sepanjang waktu. Contoh konstanta final adalah konstanta matematika seperti π (pi).

**Perbedaan antara Final dan Const dalam Dart**

Perbedaan antara "final" dan "const" dalam Dart adalah sebagai berikut:

1. **Final**: Variabel final dapat diinisialisasi pada saat deklarasi atau dalam konstruktor. Nilainya dapat ditentukan pada waktu runtime. Variabel final tidak harus memiliki nilai konstan pada waktu kompilasi.
    
    ```jsx
    class Product {
      final String productName;  //tidak perlu diberi nilai 
    	Product({
         required String productName;
      });
    
      doSomething() {
    		//ini tidak bisa dilakukan, 
    		// karena productName adalah final
    		productName = "SK KRETEK 71"; 
    	}
    }
    ```
    
2. **Const**: Konstanta const harus diinisialisasi dengan nilai konstan pada waktu kompilasi. Nilai konstan harus diketahui sebelum program dijalankan dan tidak dapat berubah. Konstanta const digunakan untuk menyimpan nilai yang tetap dan tidak berubah sepanjang waktu.
    
    ```jsx
    const productName = "GG FILTER 18"; //harus diberi nilai
    
    // tidak bisa mengubah nilai seperti ini
    // karena productName adalah sebuah constant
    productName = "SK KRETEK 71"; 
    ```
    

### Encapsulation

Enkapsulasi bertujuan untuk **menyembunyikan detail internal kelas** dan **membatasi akses langsung ke data dan metode kelas tersebut**. Enkapsulasi membantu dalam membangun kode yang lebih modular, maintainable, dan aman.

**Private**

Private adalah sebuah kata kunci yang digunakan untuk menyembunyikan anggota kelas dari akses langsung dari luar kelas tersebut. Anggota yang dinyatakan sebagai private hanya dapat diakses dari dalam kelas tersebut. Dalam beberapa bahasa pemrograman, seperti Dart, biasanya menggunakan awalan underscore (_) sebelum nama anggota untuk menandai anggota sebagai private.

Keuntungan penggunaan private adalah:

- Memproteksi data: Variabel private tidak dapat diakses atau dimodifikasi langsung dari luar kelas, sehingga mencegah manipulasi yang tidak diinginkan dan memastikan data tetap aman.
    
    ```jsx
    class ProductController {
       _getProducts(){}
    } 
    
    //_getProducts tidak bisa di akses seperti ini:
    ProductController productController = ProductController();
    productController._getProducts();
    // karena _getProducts adalah private method
    ```
    

**Public**

Public adalah kata kunci yang digunakan untuk memberikan akses terbuka kepada anggota kelas. Anggota yang dinyatakan sebagai public dapat diakses dari luar kelas tersebut. Public memberikan antarmuka publik yang dapat digunakan oleh kode eksternal untuk berinteraksi dengan objek.

Keuntungan penggunaan public adalah:

- Akses dan penggunaan: Dapat diakses oleh kode lain dan digunakan untuk mengakses atau memodifikasi data dan menjalankan metode dari objek yang sesuai.
- Peningkatan fleksibilitas: Public memberikan fleksibilitas dalam penggunaan kelas dan memungkinkan berinteraksi dengan kode lain yang terkait.
    
    ```jsx
    class ProductController {
       getProducts(){}
    } 
    
    //getProducts bisa di akses seperti ini:
    ProductController productController = ProductController();
    productController.getProducts();
    // karena getProducts adalah public method
    ```
    

### Info Penting

Private di Dart hanya tidak bisa di akses pada file yang terpisah.
Nyatanya jika kamu membuat method private tapi itu masih ada pada file yang sama, kamu masih bisa mengaksesnya.

## **Abstraction**

Dengan menggunakan Abstraction, kita dapat **membuat sebuah interface** atau **kontrak yang harus dipenuhi oleh kelas-kelas yang akan mengimplementasikan interface tersebut**. Interface ini menyediakan hanya fitur-fitur atau metode-metode penting yang perlu dikenali oleh pengguna kelas, sementara **implementasi detail dari metode tersebut disembunyikan.**

### Analogi Abstraction

1. **Seperti Membangun Mobil yang Harus Sesuai Spesifikasi**: Ketika membangun mobil, kita tidak perlu tahu seluruh detail dan kompleksitas bagian-bagian mesin atau sistem elektronik. Kita hanya perlu menggunakan antarmuka yang tersedia, seperti kemudi, pedal gas, dan rem. Hal ini memungkinkan kita untuk fokus pada penggunaan mobil tanpa harus terlibat dalam semua detail teknis yang ada di dalamnya. Dalam Dart, abstraksi memungkinkan kita untuk menggunakan kelas atau antarmuka yang telah ditentukan dengan jelas, tanpa perlu memahami semua detail implementasinya.
2. **Seperti Memasak Mie yang Harus Sesuai Resep**: Ketika memasak mie, kita mengikuti resep yang telah ditentukan dengan langkah-langkah yang jelas. Resep menyediakan instruksi yang terperinci tentang bahan yang digunakan, teknik memasak, dan waktu yang dibutuhkan. Kita tidak perlu tahu semua detail tentang bagaimana bahan-bahan tersebut dibuat atau diproses. Dalam Dart, abstraksi memungkinkan kita untuk menggunakan kelas atau fungsi dengan parameter dan tipe pengembalian yang telah didefinisikan, seperti menggunakan metode dari pustaka tertentu, tanpa perlu memahami implementasi internal dari metode tersebut.
3. **Seperti Mengendarai Mobil dengan Tombol-Tombol yang Tersedia**: Ketika kita mengendarai mobil, kita menggunakan tombol-tombol yang tersedia di konsol kendaraan, seperti tombol untuk menghidupkan mesin, mengatur suhu, atau memutar musik. Kita tidak perlu tahu detail kompleks dari bagaimana setiap tombol bekerja atau berinteraksi dengan sistem mobil. Dalam Dart, abstraksi memungkinkan kita untuk menggunakan fungsi atau metode yang telah ditentukan, tanpa perlu mengetahui semua langkah-langkah atau implementasi yang terlibat dalam fungsi tersebut.
4. **Seperti Menggunakan Mesin Fotokopi dengan Tombol-Tombol Fungsional**: Ketika menggunakan mesin fotokopi, kita hanya perlu menggunakan tombol-tombol fungsional yang tersedia, seperti tombol untuk menyalakan, memilih jumlah salinan, atau memilih ukuran kertas. Kita tidak perlu tahu bagaimana mesin fotokopi bekerja di dalamnya. Dalam Dart, abstraksi memungkinkan kita untuk menggunakan fungsi atau metode dengan parameter yang telah ditentukan, tanpa perlu memahami semua langkah-langkah atau alur kerja di dalam fungsi tersebut.
5. **Seperti Menggunakan Remote TV untuk Mengganti Saluran**: Ketika menggunakan remote TV, kita hanya perlu menekan tombol-tombol yang tersedia untuk mengganti saluran, menyesuaikan volume, atau mengatur pengaturan lainnya. Kita tidak perlu tahu detail bagaimana remote bekerja atau berinteraksi dengan TV. Dalam Dart, abstraksi memungkinkan kita untuk menggunakan kelas atau metode dengan parameter yang telah ditentukan, seperti menggunakan fungsi dari pustaka Dart atau mengatur konfigurasi dalam kode kita, tanpa perlu memahami semua detail implementasinya

### **Manfaat Abstraction:**

1. **Konsistensi**: Abstraksi membantu menciptakan konsistensi dalam kode. Dengan menyembunyikan detail implementasi yang kompleks dan hanya mengekspos antarmuka yang terdefinisi dengan baik, abstraksi memungkinkan pengguna kode untuk berinteraksi dengan komponen dengan cara yang konsisten. Ini mempermudah pengguna kode untuk memahami cara menggunakan komponen dan mengurangi risiko kesalahan yang disebabkan oleh perubahan yang tidak konsisten.
2. **Kemudahan untuk Mocking**: Abstraksi memudahkan proses mocking dalam pengujian (testing). Dengan menggunakan konsep abstraksi seperti kelas abstrak atau antarmuka, kita dapat membuat implementasi palsu (mock) dari komponen-komponen yang terlibat dalam pengujian. Mocking memungkinkan kita untuk mengisolasi komponen yang sedang diuji dari dependensi eksternal dan mengendalikan perilaku respons yang dihasilkan oleh dependensi tersebut. Dengan demikian, kita dapat menguji komponen secara terisolasi dan mengatur skenario pengujian yang sesuai.

## **Contoh Abstraction**

Disini kita membuat kontrak untuk kelas repository. Dimana, setiap class Repository nantinya akan menerapkan kontrak **CRUDRepository**. Dimana ia harus mengimplementasikan method findAll, findById, save, dan deleteById.

**Tujuan:**

1. Menghindari user membuat method baru dengan penamaan yang berbeda. Misalnya, method **save()** diganti dengan method **simpan()**. Sehingga penulisan kodenya akan jauh lebih konsisten.
2. Memaksa user untuk membuat repository sesuai dengan apa yang sudah kita tentuan pada interface **CRUDRepository**.

```dart
abstract class CRUDRepository<T> {
  Future<List<T>> findAll();
  Future<T> findById(int id);
  Future<T> save(T data);
  Future<void> deleteById(int id);
}

class UserRepository implements CRUDRepository<User> {
  List<User> _users = [
    User(1, "John Doe", "johndoe@example.com"),
    User(2, "Jane Smith", "janesmith@example.com"),
    User(3, "Bob Williams", "bobwilliams@example.com"),
  ];

  @override
  Future<List<User>> findAll() async {
    return _users;
  }

  @override
  Future<User> findById(int id) async {
    return _users.firstWhere((user) => user.id == id);
  }

  @override
  Future<User> save(User data) async {
    int index = _users.indexWhere((user) => user.id == data.id);

    if (index >= 0) {
      _users[index] = data;
    } else {
      _users.add(data);
    }

    return data;
  }

  @override
  Future<void> deleteById(int id) async {
    _users.removeWhere((user) => user.id == id);
  }
}

class User {
  int id;
  String name;
  String email;

  User(this.id, this.name, this.email);
}

void main() async {
  UserRepository userRepository = UserRepository();

  // Menampilkan semua data user
  List<User> users = await userRepository.findAll();
  users.forEach((user) {
    print("ID: ${user.id}, Name: ${user.name}, Email: ${user.email}");
  });

  // Menampilkan data user dengan ID tertentu
  int userId = 2;
  User user = await userRepository.findById(userId);
  print("ID: ${user.id}, Name: ${user.name}, Email: ${user.email}");

  // Menambah atau mengupdate data user
  User newUser = User(4, "Adam Johnson", "adamjohnson@example.com");
  await userRepository.save(newUser);
  users = await userRepository.findAll();
  users.forEach((user) {
    print("ID: ${user.id}, Name: ${user.name}, Email: ${user.email}");
  });

  // Menghapus data user dengan ID tertentu
  int deletedUserId = 1;
  await userRepository.deleteById(deletedUserId);
  users = await userRepository.findAll();
  users.forEach((user) {
    print("ID: ${user.id}, Name: ${user.name}, Email: ${user.email}");
  });
}
```

### Untuk Mentor:

Generate lah sebuah kode contoh penerapan abstract:
- Abstraction pada Controller dengan Architecture MVC
- Abstraction pada ProductService
- Abstraction pada ReuseableWidget di Flutter, dimana ReuseableWidget harus memiliki method setValue, getValue, resetValue misalnya.

## **Mixin**

Mixin adalah konsep dalam pemrograman berorientasi objek yang memungkinkan kelas untuk mendapatkan sifat dan perilaku dari kelas lain tanpa harus melakukan inheritance. Dalam bahasa pemrograman Dart, mixin dapat diimplementasikan dengan menggunakan keyword **`mixin`**

```dart
mixin Swimming {
  void swim() {
    print('Swimming...');
  }
}

mixin Flying {
  void fly() {
    print('Flying...');
  }
}

class Duck with Swimming, Flying {
  // kode kelas
}

void main() {
  Duck duck = Duck();
  duck.swim(); // output: Swimming...
  duck.fly(); // output: Flying...
}
```

---

**Contoh Penerapan OOP**

**Utillity Class**

Kelas Utility adalah kelas yang biasanya digunakan untuk menyimpan fungsi-fungsi yang terkait dengan logika bisnis atau fungsi-fungsi umum yang sering digunakan di seluruh aplikasi. Pada OOP, kelas Utility biasanya didefinisikan sebagai kelas statis dan hanya memiliki metode dan variabel statis.

Berikut adalah 10 contoh kelas Utility yang sering dibuat dengan OOP:

1. **`StringUtils`**: kelas ini berisi fungsi-fungsi untuk memanipulasi string, seperti menggabungkan beberapa string, memotong string, atau mengubah format string.
2. **`DateUtils`**: kelas ini berisi fungsi-fungsi untuk memanipulasi tanggal dan waktu, seperti mengubah format tanggal, menghitung selisih waktu, atau mengubah zona waktu.
3. **`FileUtils`**: kelas ini berisi fungsi-fungsi untuk memanipulasi berkas, seperti membaca atau menulis berkas, atau mengubah hak akses berkas.
4. **`MathUtils`**: kelas ini berisi fungsi-fungsi matematika, seperti menghitung nilai maksimum atau minimum, mengubah nilai bilangan, atau menghitung operasi matematika dasar.
5. **`HttpUtils`**: kelas ini berisi fungsi-fungsi untuk mengirim atau menerima permintaan HTTP, seperti GET, POST, PUT, atau DELETE.
6. **`EncryptionUtils`**: kelas ini berisi fungsi-fungsi untuk enkripsi dan dekripsi data, seperti mengenkripsi password atau menghasilkan hash dari data.
7. **`ValidationUtils`**: kelas ini berisi fungsi-fungsi untuk validasi data, seperti memeriksa apakah suatu nilai string adalah email yang valid atau apakah nilai angka di dalam rentang tertentu.
8. **`CollectionUtils`**: kelas ini berisi fungsi-fungsi untuk memanipulasi koleksi data, seperti mengurutkan, mencari, atau memfilter data dalam daftar atau array.
9. **`IOUtils`**: kelas ini berisi fungsi-fungsi untuk memanipulasi input dan output, seperti membaca atau menulis ke stream atau koneksi.
10. **`EmailUtils`**: kelas ini berisi fungsi-fungsi untuk mengirim email, seperti mengirim email dengan attachment atau email yang terjadwal.
    
    

## **View, Controller, Model & Service Class**

View, Controller, dan Service adalah konsep dasar pada arsitektur aplikasi yang disebut Model-View-Controller (MVC).

1. View: merupakan komponen yang menangani semua tampilan atau interaksi dengan pengguna. View mengambil data dari model dan menampilkan ke dalam bentuk yang dapat dipahami oleh pengguna. Contohnya adalah halaman web, jendela aplikasi, atau antarmuka pengguna pada perangkat mobile.
2. Controller: merupakan komponen yang bertanggung jawab untuk menerima input dari pengguna dan mengirimkan data ke model atau view. Controller mengatur interaksi antara model dan view. Contohnya adalah tombol submit pada halaman web, tombol navigasi pada perangkat mobile, atau konsol perintah pada aplikasi.
3. Service: merupakan komponen yang berisi logika bisnis atau fungsionalitas yang kompleks. Service dapat digunakan oleh controller untuk melakukan operasi yang lebih kompleks dan terpisah dari tampilan atau interaksi dengan pengguna. Contohnya adalah pengolahan data, validasi input, atau operasi yang memerlukan akses ke sumber daya eksternal seperti database atau API.
4. Model: Model dapat mewakili entitas dalam sebuah objek, tetapi tidak selalu demikian. Model dapat mewakili berbagai jenis data atau informasi dalam aplikasi, termasuk entitas, nilai, atau status. Model dapat berupa objek atau kelas, tetapi juga bisa berupa struktur data atau tipe data lainnya.

**Contoh Penerapannya pada Aplikasi MVC+S:**

```dart
Module Product
---
Product (Model)
ProductView (View)
ProductController (Controller)
ProductService (Service)

Module User
---
User (Model)
UserView (View)
UserController (Controller)
UserService (Service)

Module Order
---
Order (Model)
OrderView (View)
OrderController (Controller)
OrderService (Service)

Module Cart
---
Cart (Model)
CartView (View)
CartController (Controller)
CartService (Service)
```

### Static

Di Dart, static adalah kata kunci yang digunakan untuk mendefinisikan variabel, fungsi, atau method sebagai milik kelas atau objek, bukan milik instansi objek tertentu. Dalam konteks variabel, variabel static memiliki nilai yang sama untuk seluruh instansi objek kelas, sedangkan dalam konteks method, method static tidak perlu memiliki instance dari kelas yang terkait dengannya untuk dipanggil.

1. Class untuk menyimpan sesi Aplikasi (Seperti currentUser, role)
2. Class untuk utillity

## **Contoh Penerapan OOP 1**

### Membuat Class Utillity

Sebuah class yang dibuat untuk mempermudah implementasi dari sebuah kode. 
Contoh:

(Penamaan class dibawah hanyalah Contoh. Pada kenyataannya penamaannya bebas dan sesuai dengan kesepakatan tim. Tapi tetap menerapkan Clean Code yaa!)

- **DateUtil**
Class untuk memformat tanggal
- **CurrencyConverter**
Class untuk memformat angka numeric (integer/double) menjadi format currency.
- **Validator**
Class untuk memvalidasi apakah sebuah String(atau format lainnya) sesuai dengan ketentuan yang ada. Misalnya, String harus dalam format email.
- **FileHandler**
Class untuk mempermudah proses menulis, maupun membaca File
- **Encryptor atau Decryptor**
Class untuk mempermudah proses enkripsi atau deksripsi
- **MathUtil**
Class untuk mempermudah perhitungan matematika yang rumit.
- **PDFGenerator**
Class untuk membuat file PDF
- **LocalDB**
Class untuk mempermudah menyimpan data ke local database
- **HTTPHandler**
Class untuk mengatasi semua request http.
Dengan membuat class ini, akan memudahkamu kamu ketika nanti ingin mengganti package. Misalnya dari http ingin diubah ke dio atau sebaliknya.
Atau kita ingin memberi nilai headers default ketika membuat http request, nah itu bisa juga dilakukan dengan metode ini.
- **FireUtil**
Class untuk menghandle semua hal yang terkait dengan firebase.. Misalnya, menambahkan data, menghapus data, mengupdate maupun mengambil data.
