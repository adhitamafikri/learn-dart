void printMyName(name) {
  print('My name is ${name}');
}

int sumTwoNumbers(num1, num2) {
  return num1 + num2;
}

String concatTwoWords(word1, word2) {
  return ('${word1} - ${word2}');
}

bool isLesserThan10(number) {
  return number < 10;
}

/**
 * main function
 */
void main() {
  print('Hey Quandale Dingle Here');

  printMyName('Adhitama Fikri');

  int sumResult = sumTwoNumbers(10, 12);
  print('The sumResult is ${sumResult}');

  String concatResult = concatTwoWords('jehan', 'fikri');
  print('The concatResult is ${concatResult}');

  // Boolean
  bool lteResult = isLesserThan10(12);
  print('is 12 lesser than 10? ${lteResult}');

  // Lists / Arrays
  List nameList = ['Adhitama', 'joanne', 'febby'];
  print('length of nameList ${nameList.length}');
  print('first element of nameList ${nameList[0]}');

  List secondNameList = ['Burrito', 'Maria', 'Lexy'];
  List finalList = [...nameList, ...secondNameList];
  print('The final list is ${finalList}');

  // Sets
  var foods = <String>{}; // empty set
  var meats = {'tenderloin', 'sirloin', 'oxtail'};
  foods.add('Broccoli');
  foods.add('Carrot');
  foods.addAll(meats);
  print('The foods set is ${foods}');

  // Maps / Objects
  var student = {
    'name': 'Adhitama Fikri',
    'age': 25,
  };
  var categoryParams = {
    0: {
      'id': 0,
      'name': 'Besi',
      'slug': 'besi',
    },
    1: {
      'id': 1,
      'name': 'Besi Bengkok',
      'slug': 'besi-bengkok',
    }
  };
  print('student is ${student}');
  print('categoryParams is ${categoryParams}');

  // Maps using constructor
  var books = Map<String, String>();
  books['science'] = 'The Big bang';
  books['religious'] = 'The orthodox';
  print('The books object ${books}');

  var contract = Map<String, Map<String, String>>();  
  contract['adhitama'] = {
    'id': '12345',
    'description': '3 vets',
  };
  contract['febby'] = {
    'id': '98765',
    'description': 'Boppin',
  };
  print('The contract object ${contract}');
}
