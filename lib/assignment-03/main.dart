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



}

class Assignments {
  Assignments();

  evenNumbers() {
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    List<int>  evenNumbers = [];
    for (var i = 0 ; i < numbers.length ; i++){
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

  primeNumberChecker(){


    print("Type any Numbers");
    int higherNumber =  int.parse(stdin.readLineSync()!) ;

    for (int i = 2; i <= higherNumber / 2; i++) {
      if (higherNumber % i == 0) {
        return false; // Number is divisible by i, so it's not prime
      }
    }

    print("$higherNumber is prime number");
  }

  factorialNumber(){
    int number = 5;
    int factorial = 1;

    for (int i = 1; i <= number; i++) {
      factorial *= i;
    }
    print('Factorial of $number is $factorial');

  }

  sumOfDigit(){
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

  table(){
    int number = 5;

    for (int i = 1; i <= 10; i++) {
      int result = number * i;
      print('$number x $i = $result');
    }
  }

  palindromeString(){
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

  triangleShape(){

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
        line +=  "$j" ;
      }
      print(line);
    }
  }

  triangleShapeWithRepeatNumbers() {
    int numLines = 9;

    for (int i = 1; i <= numLines; i++) {
      String line = '';
      for (int j = 1; j <= i; j++) {
        line +=  "$i" ;
      }
      print(line);
    }
  }
}