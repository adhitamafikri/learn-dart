enum AnimalType { cat, dog, rabbit }

void printAnimalType(AnimalType animalType) {
  switch (animalType) {
    case AnimalType.cat:
      print('cat');
      break;
    case AnimalType.dog:
      print('dog');
      break;
    case AnimalType.rabbit:
      print('rabbit');
      break;
    default:
      print('Unknown Type');
      break;
  }
}

void main() {
  print('Enumerations, Classes, Objects\n');

  printAnimalType(AnimalType.cat);
  printAnimalType(AnimalType.dog);
  printAnimalType(AnimalType.rabbit);
}
