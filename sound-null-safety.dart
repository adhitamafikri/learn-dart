void stringNullSafety() {
  String? name;
  print('the name is ${name}');
  name = 'Balencia';
  print('the name is ${name}\n');
}

void listNullSafety() {
  List<String>? names = null;
  print('The list is ${names}');

  names = ['Balencia', 'Stuoed'];
  print('The list is ${names}\n');
}

String? firstNonNullValue({String? word1, String? word2}) {
  return 'The result is: ${word1 ?? word2}\n';
}

String? nullAwareAssignment({String? word1, String? word2}) {
  String? result;
  result ??= word1;
  result ??= word2;
  return 'The final result: ${result}\n';
}

void main() {
  print('sound null safety');

  stringNullSafety();
  listNullSafety();

  print(firstNonNullValue(word1: 'balencia'));
  print(firstNonNullValue(word2: 'yaoggo'));

  print(nullAwareAssignment(word1: 'balencia'));
  print(nullAwareAssignment(word2: 'yaoggo'));
}
