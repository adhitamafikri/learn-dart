int sumTwoNumbers(int num1, int num2) {
  return num1 + num2;
}

// Functions with named params
String createFullName({String? firstName, String? lastName}) {
  var fullName = '';
  if (firstName != null) fullName += firstName;
  if (lastName != null) fullName += lastName;

  return 'The full name is $fullName';
}

int sumNumbers({List<int>? numberArray}) {
  if (numberArray?.length == 0) {
    return 0;
  }

  int result = 0;
  numberArray?.forEach((element) {
    result += element;
  });

  return result;
}

/**
 * Main function with argss
 */
void main(List<String> args) {
  print('Args supplied to main function');
  args.forEach((arg) => print('${arg}'));

  print('\nFunctions in dart\n');

  // Calling function with standard params
  print(sumTwoNumbers(59, 11));

  // Calling functions with named params
  print(createFullName(firstName: 'Adhitama', lastName: 'Fikri'));
  print(createFullName(firstName: 'Jehan'));
  print(createFullName(lastName: 'Merkle'));

  // named params with List<> type
  print('Sum result of [1, 2] = ${sumNumbers(numberArray: [1, 2])}');
  print('Sum result of [1, 2, 3] = ${sumNumbers(numberArray: [1, 2, 3])}');
  print(
      'Sum result of [1, 2, 3, 4] = ${sumNumbers(numberArray: [1, 2, 3, 4])}');
  print('Sum result of [] = ${sumNumbers(numberArray: [])}');
  print('Sum result of null = ${sumNumbers()}');
}
