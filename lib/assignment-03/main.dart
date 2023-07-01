import 'dart:io';

void main() {
  var methods = Assignments();


  var evenNumber = methods.evenNumbers();
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
}