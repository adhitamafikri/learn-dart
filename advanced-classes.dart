import 'dart:ffi';

abstract class Musician {
  Bool? canSing;
  Bool? canCoverSong;
  Bool? canWriteSong;
  Bool? canPlayMusicalInstruments;
}

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);
  Person.fromJson(Map data) {
    print('from here');
    this.name = data['name'];
    this.age = data['age'];
  }

  static void greeting(String? someWord) {
    print('greetings people. ${someWord}');
  }
}

void main() {
  print('advanced classes\n');

  var p1 = Person('Hugo', 25);
  print(p1.name);
  print(p1.age);
  print('\n');

  var p2 = Person.fromJson({'name': 'Adhitama', 'age': 25});
  print(p2.name);
  print(p2.age);
  print('\n');

  final arr = <Person>[];
  arr.addAll([p1, p2]);
  print('All is');
  print(arr[0].name);
  print(arr[1].name);
}
