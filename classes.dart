// Classes
class PersonAddress {
  String? street;
  int? number;

  PersonAddress({String street = '', int number = 0}) {
    this.street = street;
    this.number = number;
  }
}

// Class with standard constructor
class Person {
  String? name;
  int? age;
  PersonAddress? address;

  Person(this.name, this.age, this.address);

  String sayGreeting() {
    return 'Hi, my name is ${this.name}';
  }
}

// Class with named params constructor
class PersonNamed {
  String? name;
  int? age;
  PersonAddress? address;

  PersonNamed({String name = '', int age = 0, PersonAddress? address}) {
    this.name = name;
    this.age = age;
    this.address = address;
  }

  String sayGreeting() {
    return 'Hi, my name is ${this.name}';
  }
}

// Class Extensions
class EmploymentData {
  String? position;
  int? level;

  EmploymentData({String position = '', int level = 0}) {
    this.position = position;
    this.level = level;
  }
}

class Employee extends Person {
  EmploymentData? employmentData;

  Employee(super.name, super.age, super.address, this.employmentData);

  String sayGreeting() {
    return 'Hello, my name is ${this.name}. My position is ${this.employmentData?.position} ${this.employmentData?.level}';
  }
}

void main() {
  print('\nDart Classes\n');

  // Object literal
  const myPersonalData = {
    'name': 'Adhitama',
    'age': 26,
    'address': {'street': 'Sesame street', 'number': 24},
    'song': 'Balenciaga Challenge',
  };
  print(
      'my personal data is\nname: ${myPersonalData['name']}\nage: ${myPersonalData['age']}');
  print('Address is:\nstreet: ${myPersonalData['address']}\n\n');

  // Object using classes and standard constructors
  var penny = Person(
      'penny', 24, PersonAddress(street: 'Penny Bound Street', number: 109));
  print('Object with classes and constructors');
  print(penny.sayGreeting());
  print(
      'Penny data is:\nname: ${penny.name}\nage: ${penny.age}\naddress: ${penny.address?.street}, number: ${penny.address?.number}');
  print('\n');

  // Object using classes and named constructors
  var jennifer = PersonNamed(
      name: 'Jennifer',
      age: 24,
      address: PersonAddress(street: 'Hugo Street', number: 109));
  print('Object with classes and constructors');
  print(jennifer.sayGreeting());
  print(
      'Jennifer data is:\nname: ${jennifer.name}\nage: ${jennifer.age}\naddress: ${jennifer.address?.street}, number: ${jennifer.address?.number}');
  print('\n');

  // Extended class
  var employeeA = Employee(
      'Adhitama Hublot',
      24,
      PersonAddress(street: 'Hublot Street', number: 234),
      EmploymentData(position: 'Front End Developer', level: 2));
  print('Object with extended classes');
  print(employeeA.sayGreeting());
  print('\n');
}
