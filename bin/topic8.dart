void main(List<String> arguments) {
  // Task 1:
  // maxOfThree(1, 1, 1);

  // Task 2:
  // List list = [8, 2, 3, 0, 7];
  // sumOfall(list);

  // Task 3:
  // List list = [8, 2, 3, -1, 7];
  // multiplyAll(list);

  // Task 4:
  // String string = "1234abcd";
  // reverseString(string);

  // Task 5:
  // int number = 11;
  // print(factorial(number));

  // Task 6:
  // int first = 5;
  // int second = 10;
  // int check = 7;
  // print(inRange(first, second, check));

  // Task 7:
  // String string ="The quick Brow Fox";
  // countUpperCaseLowerCase(string);

  // Task 8:
  // List list =  [1,2,3,3,3,3,4,5];
  // print(distinctList(list));

  // Task 9:
  // int number = 189;
  // print(isPrime(number));

  // Task 10:
  // List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // print(evenList(list));

  // Task 11:
  // int number = 6;
  // print(isPerfect(number));

  // Task 12:
  // String string = "madam";
  // print(isPalindrom(string));

  // Task 13:
  // int n = 4;
  // printPascalsTriangle(n);

  // Task 14:
  // void nestedFunction() {
  //   print("Внутренняя функция вызвана.");
  // }
  // nestedFunction();
}

void printPascalsTriangle(int n) {
  for (int line = 1; line <= n; line++) {
    int coef = 1;
    for (int j = 1; j <= line; j++) {
      print('$coef ');
      coef = coef * (line - j) ~/ j;
    }
    print('');
  }
}

bool isPalindrom(String string) {
  String res = string.split('').reversed.join();
  return res == string;
}

bool isPerfect(int number) {
  if (number <= 1) {
    return false;
  }
  int sum = 1;
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      sum += i;
      if (i != number ~/ i) {
        sum += number ~/ i;
      }
    }
  }
  return sum == number;
}

List<int> evenList(List<int> list) {
  List<int> res = [];
  for (int i = 0; i < list.length; i++) {
    if (list[i].isEven) {
      res.add(list[i]);
    }
  }
  return res;
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  if (number <= 3) {
    return true;
  }

  if (number % 2 == 0 || number % 3 == 0) {
    return false;
  }

  int i = 5;
  while (i * i <= number) {
    if (number % i == 0 || number % (i + 2) == 0) {
      return false;
    }
    i += 6;
  }

  return true;
}

distinctList(List list) {
  return list.toSet().toList();
}

void countUpperCaseLowerCase(String inputString) {
  int upperCaseCount = inputString.replaceAll(RegExp('[^A-Z]'), '').length;
  int lowerCaseCount = inputString.replaceAll(RegExp('[^a-z]'), '').length;

  print("No. of Upper case characters: $upperCaseCount");
  print("No. of Lower case characters: $lowerCaseCount");
}

inRange(int first, int second, int check) {
  if (check >= first && check <= second) {
    return true;
  } else {
    return false;
  }
}

int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

reverseString(String string) {
  List<String> characters = string.split('');
  characters = characters.reversed.toList();
  String res = characters.join();
  print(res);
}

multiplyAll(List list) {
  print(list.reduce((value, element) => value = value * element));
}

sumOfall(List list) {
  print(list.reduce((value, element) => value += element));
}

maxOfThree(int first, int second, int third) {
  if (first > second && first > third) {
    print(first);
  } else if (second > first && second > third) {
    print(second);
  } else if (third > first && third > second) {
    print(third);
  } else {
    print("ALL ARE EQUAL");
  }
}
