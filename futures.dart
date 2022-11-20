Future<int> asyncMultiplyByTwo(int a) async {
  return Future.delayed(Duration(seconds: 3), () => a * 2);
}

void doComputation() async {
  int result = await asyncMultiplyByTwo(15);
  print('The result of asyncMultiplyByTwo: ${result}');
}

void main() {
  print('futures');

  doComputation();
}
