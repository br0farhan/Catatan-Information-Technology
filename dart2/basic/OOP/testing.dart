class Person {
  String name;
  int age;

  Person({required this.name, required this.age});
}

void main() {
// var person = Person('John Doe', 25);
  var person = Person(name: 'John Doe', age: 25);
  print('Name: ${person.name}');
  print('Age: ${person.age}');
}

