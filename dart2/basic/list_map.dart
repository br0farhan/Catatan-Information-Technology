void main(List<String> deskripsi) {
  // Bisa menyimpan lebih dari 1
  // Penyimpanan berbasi index
  List dataHp = [
    "Samsung",  // index 0
    "Iphone",   // index 1
    "Nokia",    // index 2
    "Xiaomi",   // index 3
  ];
    print(dataHp[2]);

  //===========================================================//

  // Bisa menyimpan lebih dari 1
  // Penyimpananya berbasi key and value
  Map dataLaptop = {
    // key : value,
    "productName": "Macbook Air",
    "price": 2000000,
    "brand": "Apple",
  };
  print(dataLaptop["productName"]);
}
