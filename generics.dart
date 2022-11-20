class PairOfStrings {
  final String value1;
  final String value2;

  PairOfStrings(this.value1, this.value2);
}

/**
 * The generics
 * class ClassName<type1, type2, ....>
 */
class Pair<A, B> {
  final A value1;
  final B value2;

  Pair(this.value1, this.value2);
}

void main() {
  print('generics');

  final pair1 = Pair('Balenciaga', 'Challenge');
  print('pair1: ${pair1.value1}-${pair1.value2}');
  final pair2 = Pair('Petrik', 23);
  print('pair2: ${pair2.value1}-${pair2.value2}');
}
