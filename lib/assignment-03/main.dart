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

  authentication(){

    String email = "zubair@gmail.com";
    String password = "123@123";

    print("Type your email");
    var userEmail = stdin.readLineSync();
    print("Type Your Password");
    var userPassword = stdin.readLineSync();

    if(userEmail == email && userPassword == password){
      print("Login Success");
    }else{
      print("email or Password is inCorrect");
    }

  }

  authenticationFromUserList(){
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


  giti(){
    // Get the list of numbers from the user
    print("Enter a list of numbers (comma-separated):");
    String input = stdin.readLineSync()!;

    // Split the input string into a list of numbers
    List<String> numberStrings = input.split(",");
    List<int> numbers = numberStrings.map(int.parse).toList();

    // Print the numbers greater than 5 using a for loop and if-else condition
    print("Numbers greater than 5:");
    for (int number in numbers) {
      if (number > 5) {
        print(number);
      }
    }
  }



}
