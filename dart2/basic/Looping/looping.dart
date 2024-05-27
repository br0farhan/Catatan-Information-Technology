void main() {
// Todo Contoh Looping
  List<int> angka = [1, 2, 3, 4, 5];

  for (var i = 0; i < angka.length; i++) {
    // print(angka[i]);
  }
// Todo Contoh Break
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    // print(i);
  }
// Todo Contoh Continue
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    // print(i);
  }
// Todo Soal Looping
  int x = 0;
  for (var i = 1; i <= 5; i++) {
    x += i;
  }
  print(x);
  List<String> fruits = ['apple', 'banana', 'mango'];
  for (var fruit in fruits) {
    print('I like $fruit');
  }
  List<int> numbers = [1, 2, 3, 4, 5];
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      print('${numbers[i]} is even');
    } else {
      print('${numbers[i]} is odd');
    }
  }
  int count = 0;
for (var i = 1; i <= 100; i++) {
  if (i % 2 == 0) {
    count++;
  }
}
print(count);
}
