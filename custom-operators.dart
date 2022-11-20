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

  @override
  bool operator ==(covariant Bugatti other) => other.model == model;

  @override
  int get hashCode => model.hashCode;

  factory Bugatti.bugattiChiron() {
    return Bugatti(model: 'Chiron');
  }
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

  Bugatti bugattiChiron2 = Bugatti.bugattiChiron();
  print(bugattiChiron == bugattiChiron2);
}
