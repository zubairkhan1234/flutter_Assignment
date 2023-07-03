import 'dart:io';

void main() {
  var methods = Assignments();

  //
  // // Q 01
  // var evenNumber = methods.evenNumbers();
  //
  // // Q 02
  // var  fibonacciSequence = methods.fibonacciSequence();

  // Q 03
  var primeNumberChecker = methods.primeNumberChecker();
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

}