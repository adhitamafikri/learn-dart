abstract class Vehicle {
  String manufacturer;
  String model;
  int wheels;
  int topSpeed;

  Vehicle(
      {required this.manufacturer,
      required this.model,
      required this.wheels,
      required this.topSpeed});

  void printVehicleType() {
    switch (wheels) {
      case 2:
        print('Prolly motocycle or a bike');
        break;
      case 3:
        print('Tricycle bih');
        break;
      case 4:
        print('It is a car');
        break;
      case 8:
        print('Issa big truck');
        break;
      default:
        print('unknown vehicle type');
        break;
    }
  }
}

class Bugatti extends Vehicle {
  String model;

  Bugatti({required this.model})
      : super(manufacturer: 'Bugatti', model: model, wheels: 4, topSpeed: 300);

  factory Bugatti.bugattiChiron() {
    return Bugatti(model: 'Chiron');
  }
}

class Ducati extends Vehicle {
  String model;

  Ducati({required this.model})
      : super(manufacturer: 'Ducati', model: model, wheels: 2, topSpeed: 250);
}

void main() {
  print('factory constructor');

  Bugatti bugattiChiron = Bugatti.bugattiChiron();
  print('the data of bugatti chiron:');
  bugattiChiron.printVehicleType();
  print(bugattiChiron.manufacturer);
  print(bugattiChiron.model);
  print(bugattiChiron.wheels);
  print(bugattiChiron.topSpeed);
  print('\n');

  // Ducati ducatiMX300 = Ducati(model: 'MX300');
  // print('the data of Ducati:');
  // ducatiMX300.printVehicleType();
  // print(ducatiMX300.manufacturer);
  // print(ducatiMX300.model);
  // print(ducatiMX300.wheels);
  // print(ducatiMX300.topSpeed);
}
