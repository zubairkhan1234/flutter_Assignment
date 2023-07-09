import 'dart:io';
import 'dart:math';

void main() {
  var methods = Assignments();

  //
  // // Q 01
  // var evenNumber = methods.evenNumbers();
  //
  // // Q 02
  // var  fibonacciSequence = methods.fibonacciSequence();

  // // Q 03
  // var primeNumberChecker = methods.primeNumberChecker();

  // // Q 04
  // var  factorialNumber = methods.factorialNumber();

  // // Q 05
  // var sumOfDigit = methods.sumOfDigit();

  // // Q 06
  // var largestNumberFromList = methods.largestNumberFromList();

  // // Q 07
  // var table = methods.table();

  // //Q 09
  // var palindromeString = methods.palindromeString();

  // // Q 10
  // var cubeNumber = methods.cubeNumber();

  // // Q 11
  // var triangleShape = methods.triangleShape();

  // // Q 12
  // var triangleShapeWithNumbers = methods.triangleShapeWithNumbers();

  // // Q 13
  // var triangleShapeWithRepeatNumbers = methods.triangleShapeWithRepeatNumbers();

  // // Q 14
  // var triangleWithDifferentNumber = methods.triangleWithDifferentNumber();

  // // Q 15
  // var pyramidPatternWithNumbers = methods.pyramidPatternWithNumbers();

  // // Q 16
  // var pyramidPatternWithAsterisk = methods.pyramidPatternWithAsterisk();

  // // Q 17
  // var authentication  = methods.authentication();

  // // Q 18
  // var authenticationFromUserList = methods.authenticationFromUserList();

  // // Q 19
  // var ifNumberGreaterThanFive = methods.ifNumberGreaterThanFive();

  // // Q 20
  // var vowelsWords = methods.vowelsWords();

  // // Q 21
  // var  maxAndMinElement = methods.maxAndMinElement();

  // // Q 22
  // var sumAndSquareOfOddNumber = methods.sumAndSquareOfOddNumber() ;

  // // Q 23
  // var studentResult = methods.studentResult();

  // // Q 24
  // var  averageOfNegativeNumbers = methods.averageOfNegativeNumbers();

  // Q 25
  var isPrimeNumber = methods.isPrimeNumber();
}


class Assignments {
  Assignments();

  evenNumbers() {
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    List<int> evenNumbers = [];
    for (var i = 0; i < numbers.length; i++) {
      var number = numbers[i];
      if (number % 2 == 0) {
        evenNumbers.add(number);
      }
    }
    print("Q1");
    print(evenNumbers);
  }

  fibonacciSequence() {
    print("Type any number which is greater than 15");
    int n = int.parse(stdin.readLineSync()!);

    int firstNum = 0;
    int secondNum = 1;

    print(firstNum); // Print the first number

    for (int i = 0; i < n; i++) {
      print(secondNum); // Print the current number
      int nextNum = firstNum + secondNum;
      firstNum = secondNum;
      secondNum = nextNum;
    }
  }

  primeNumberChecker() {
    print("Type any Numbers");
    int higherNumber = int.parse(stdin.readLineSync()!);

    for (int i = 2; i <= higherNumber / 2; i++) {
      if (higherNumber % i == 0) {
        return false; // Number is divisible by i, so it's not prime
      }
    }

    print("$higherNumber is prime number");
  }

  factorialNumber() {
    int number = 5;
    int factorial = 1;

    for (int i = 1; i <= number; i++) {
      factorial *= i;
    }
    print('Factorial of $number is $factorial');
  }

  sumOfDigit() {
    int number = 1234558;
    int sum = 0;

    while (number > 0) {
      sum += number % 10;
      number ~/= 10;
    }

    print('Sum of digits: $sum');
  }

  largestNumberFromList() {
    List<int> numbers = [3, 9, 1, 6, 4, 2, 8, 5, 7];
    int largest = numbers[0];

    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] > largest) {
        largest = numbers[i];
      }
    }

    print('Largest number: $largest');
  }

  table() {
    int number = 5;

    for (int i = 1; i <= 10; i++) {
      int result = number * i;
      print('$number x $i = $result');
    }
  }

  palindromeString() {
    bool isPalindrome(String input) {
      String normalizedInput = input.toLowerCase();
      String reversedInput = normalizedInput.split('').reversed.join('');

      return normalizedInput == reversedInput;
    }

    String testString = "radar";

    if (isPalindrome(testString)) {
      print('$testString is a palindrome.');
    } else {
      print('$testString is not a palindrome.');
    }
  }

  // cubeNumber(){
  //   int numTerms = 5;
  //   for (int i = 1; i <= numTerms; i++) {
  //     int cube = pow(i, 3);
  //     print('Number is: $i and cube of $i is: $cube');
  //   }
  // }

  triangleShape() {
    int numLines = 4;

    for (int i = 1; i <= numLines; i++) {
      String line = '';
      for (int j = 1; j <= i; j++) {
        line += '*';
      }
      print(line);
    }
  }

  triangleShapeWithNumbers() {
    int numLines = 9;

    for (int i = 1; i <= numLines; i++) {
      String line = '';
      for (int j = 1; j <= i; j++) {
        line += "$j";
      }
      print(line);
    }
  }

  triangleShapeWithRepeatNumbers() {
    int numLines = 9;

    for (int i = 1; i <= numLines; i++) {
      String line = '';
      for (int j = 1; j <= i; j++) {
        line += "$i";
      }
      print(line);
    }
  }

  triangleWithDifferentNumber() {
    int rows = 4; // Number of rows in the triangle
    dynamic number = 1;

    for (int i = 1; i <= rows; i++) {
      String line = '';
      for (int j = 1; j <= i; j++) {
        // Print the current number
        line += "${number++}";
      }
      print('$line ');
    }
  }

  pyramidPatternWithNumbers() {
    int rows = 4; // Number of rows in the pyramid
    int number = 1;
    for (int i = 0; i < rows; i++) {
      String pyramidPattern = "";
      for (int j = 0; j < rows - i - 1; j++) {
        // Print spaces for left-aligned pyramid
        pyramidPattern += " ";
        // print(' ');
      }

      for (int k = 0; k <= i; k++) {
        // Print asterisks for the pyramid
        pyramidPattern += '${number++} ';
        // print('* ');
      }
      print(pyramidPattern);
    }
  }

  pyramidPatternWithAsterisk() {
    int rows = 4; // Number of rows in the pyramid

    for (int i = 0; i < rows; i++) {
      String pyramidPattern = "";
      for (int j = 0; j < rows - i - 1; j++) {
        // Print spaces for left-aligned pyramid
        pyramidPattern += " ";
        // print(' ');
      }

      for (int k = 0; k <= i; k++) {
        // Print asterisks for the pyramid
        pyramidPattern += '* ';
        // print('* ');
      }
      print(pyramidPattern);
    }
  }

  authentication() {
    String email = "zubair@gmail.com";
    String password = "123@123";

    print("Type your email");
    var userEmail = stdin.readLineSync();
    print("Type Your Password");
    var userPassword = stdin.readLineSync();

    if (userEmail == email && userPassword == password) {
      print("Login Success");
    } else {
      print("email or Password is inCorrect");
    }
  }

  authenticationFromUserList() {
    List<Map<String, String>> users = [
      {"email": "zubair1@example.com", "password": "password1"},
      {"email": "zubair1@example.com", "password": "password2"},
      {"email": "zubair1@example.com", "password": "password3"}
    ];

    bool isLoggedIn = false;

    while (!isLoggedIn) {
      // Get user input
      print("Type your email");
      String email = stdin.readLineSync()!;
      print("Type Your Password");
      String password = stdin.readLineSync()!;

      // Check if entered credentials match
      for (var user in users) {
        if (user["email"] == email && user["password"] == password) {
          isLoggedIn = true;
          break;
        }
      }

      // Display appropriate message
      if (isLoggedIn) {
        print("login successful.");
      } else {
        print("Invalid email or password");
      }
    }
  }

  ifNumberGreaterThanFive() {
    List<int> numberList = [2, 8, 3, 10, 6, 4, 7];
    print("Numbers greater than 5:");

    for (int num in numberList) {
      if (num > 5) {
        print(num);
      }
    }
  }

  vowelsWords() {
    String text = "Hello, World!";
    int vowelCount = 0;
    String vowels = "aeiouAEIOU";

    for (int i = 0; i < text.length; i++) {
      if (vowels.contains(text[i])) {
        vowelCount++;
      }
    }

    print("vowel word count");
    print(vowelCount);
  }

  maxAndMinElement() {
    List<int> numbers = [15, 5, 12, 2, 7, 1];

    int min = numbers[0];
    int max = numbers[0];

    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] < min) {
        min = numbers[i];
      }

      if (numbers[i] > max) {
        max = numbers[i];
      }
    }

    print("Minimum: $min");
    print("Maximum: $max");
  }

  sumAndSquareOfOddNumber() {
    List<int> numberList = [1, 2, 3, 4, 5, 6, 7];
    int sum = 0;

    for (int num in numberList) {
      if (num % 2 != 0) {
        // Check if the number is odd
        sum += (num * num); // Square the number and add it to the sum
      }
    }

    print("The sum of the squares of odd numbers is: $sum");
  }

  studentResult() {
    List<Map<String, dynamic>> studentDetails = [
      {
        'name': 'John',
        'marks': [80, 75, 90],
        'section': 'A',
        'rollNumber': 101
      },
      {
        'name': 'Emma',
        'marks': [95, 92, 88],
        'section': 'B',
        'rollNumber': 102
      },
      {
        'name': 'Ryan',
        'marks': [70, 65, 75],
        'section': 'A',
        'rollNumber': 103
      },
    ];

    print('Student Grades:');

    for (var student in studentDetails) {
      String name = student['name'];
      List<int> marks = student['marks'];
      int totalMarks = marks.reduce((a, b) => a + b);
      double average = totalMarks / marks.length;
      String grade;

      if (average >= 90) {
        grade = 'A';
      } else if (average >= 80) {
        grade = 'B';
      } else if (average >= 70) {
        grade = 'C';
      } else if (average >= 60) {
        grade = 'D';
      } else {
        grade = 'F';
      }

      print('Name: $name\tGrade: $grade');
    }
  }

  averageOfNegativeNumbers() {
    List<int> numberList = [5, -2, -7, 3, -1, 0, -4];

    int count = 0;
    int sum = 0;

    for (int num in numberList) {
      if (num < 0) {
        // Check if the number is negative
        count++;
        sum += num;
      }
    }

    if (count == 0) {
      return 0.0;
    }

    var average = sum / count.toDouble();

    print("average of negative numbers is: $average");
  }

  isPrimeNumber() {
    bool isPrime(int number) {
      if (number < 2) {
        return false;
      }

      for (int i = 2; i * i <= number; i++) {
        if (number % i == 0) {
          return false;
        }
      }

      return true;
    }

    List<int> getPrimeNumbers(List<int> numbers) {
      List<int> primeNumbers = [];

      for (int num in numbers) {
        if (isPrime(num)) {
          primeNumbers.add(num);
        }
      }

      return primeNumbers;
    }

    List<int> numberList = [4, 7, 10, 13, 16, 19, 22, 25, 28, 31];
    List<int> primeNumbers = getPrimeNumbers(numberList);

    print("Prime numbers: $primeNumbers");
  }
}
