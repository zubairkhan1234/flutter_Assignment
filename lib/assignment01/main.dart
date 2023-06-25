import 'dart:io';
import 'dart:math';

void main () {

  var assignment = Assignment();
  // Q1
  var boxType = assignment.shapeCondition();

  // Q2
  var ageCondition = assignment.ageCondition();

  // Q3
  var studentPercentage = assignment.studentPercentage();

  // Q4
  var checkingLeapYear = assignment.checkingLeapYear();

  // Q5
  var tempMessage = assignment.tempMessage();

  // Q6
  var vowelOrConsonant = assignment.vowelOrConsonant();

  // Q7
  var electricityBill = assignment.electricityBill();

  // Q8
  var marksheetCalculation = assignment.marksheetCalculation();

  //Q9
  var evenOdd = assignment.evenOdd();

  //Q10
  var greatestAndLowestNumber = assignment.greatestAndLowestNumber();

  // Q11
  var rootOfNumber = assignment.rootOfNumber();

  // Q12
  var CelsiustoFahrenheit = assignment.CelsiustoFahrenheit();
}


class Assignment {
  Assignment();

  String? shapeCondition(){

    print('Type width');
    int width = int.parse(stdin.readLineSync()!);
    print('Type height');
    int? height = int.parse( stdin.readLineSync()!);

    if((width != null) && (height != null)){
      if(width == height){
        // print('Square');
        print('Square') ;
      }else {
        // print('rectangle');
        print('rectangle');
      }
    }
  }

  String?  ageCondition(){
    print('Enter the first age:');
    int person1 = int.parse(stdin.readLineSync()!);

    print('Enter the second age:');
    int person2 = int.parse(stdin.readLineSync()!);

    if (person1 > person2) {
      print('person 1 is the oldest.');
      print('person 2 is the youngest.');
    } else if (person1 < person2) {
      print('person 2 is the oldest.');
      print('person 1 is the youngest.');
    } else {
      print('Both ages are the same.');
    }
  }

  String? studentPercentage(){
    print('Enter the number of classes held:');
    int numberOfClassesHeld = int.parse(stdin.readLineSync()!);

    print('Enter the number of classes attended:');
    int numberOfClassesAttended = int.parse(stdin.readLineSync()!);

    double attendancePercentage = (numberOfClassesAttended / numberOfClassesHeld) * 100;

    print('Percentage of classes attended: $attendancePercentage%');

    if (attendancePercentage >= 75) {
      print('The student is allowed to sit in the exam.');
    } else {
      print('The student is not allowed to sit in the exam.');
    }
  }

  String? checkingLeapYear(){

    int year = int.parse(stdin.readLineSync()!);

    if (year % 4 == 0) {
      if (year % 100 == 0) {
        if (year % 400 == 0) {
          print('$year is a leap year.');
        } else {
          print('$year is not a leap year.');
        }
      } else {
        print('$year is a leap year.');
      }
    } else {
      print('$year is not a leap year.');
    }
  }

  String? tempMessage(){
    print('Enter the temperature in Celsius:');
    double temperature = double.parse(stdin.readLineSync()!);

    if (temperature < 0) {
      print('Freezing weather');
    } else if (temperature >= 0 && temperature <= 10) {
      print('Very Cold weather');
    } else if (temperature > 10 && temperature <= 20) {
      print('Cold weather');
    } else if (temperature > 20 && temperature <= 30) {
      print('Normal in Temp');
    } else if (temperature > 30 && temperature <= 40) {
      print('It\'s Hot');
    } else {
      print('It\'s Very Hot');
    }
  }

  String? vowelOrConsonant() {
    print('Enter an alphabet:');
    String alphabet = stdin.readLineSync()!.toLowerCase();

    if (alphabet.length == 1) {
      if (alphabet == 'a' ||
          alphabet == 'e' ||
          alphabet == 'i' ||
          alphabet == 'o' ||
          alphabet == 'u') {
        print('$alphabet is a vowel.');
      } else {
        print('$alphabet is a consonant.');
      }
    } else {
      print('Invalid input. Please enter a single alphabet.');
    }
  }

  String? electricityBill(){
    print('Enter customer ID:');
    int customerId = int.parse(stdin.readLineSync()!);

    print('Enter customer name:');
    String customerName = stdin.readLineSync()!;

    print('Enter units consumed:');
    int unitsConsumed = int.parse(stdin.readLineSync()!);

    double chargePerUnit;

    if (unitsConsumed <= 199) {
      chargePerUnit = 1.20;
    } else if (unitsConsumed >= 200 && unitsConsumed < 400) {
      chargePerUnit = 1.50;
    } else if (unitsConsumed >= 400 && unitsConsumed < 600) {
      chargePerUnit = 1.80;
    } else {
      chargePerUnit = 2.00;
    }

    double billAmount = unitsConsumed * chargePerUnit;

    print('Customer IDNO: $customerId');
    print('Customer Name: $customerName');
    print('Units Consumed: $unitsConsumed');
    print('Amount Charges @Rs. $chargePerUnit per unit: $billAmount');
    print('Net Bill Amount: $billAmount');
  }

  String? marksheetCalculation(){
    print('Enter student name:');
    String studentName = stdin.readLineSync()!;

    print('Enter student roll number:');
    int rollNumber = int.parse(stdin.readLineSync()!);

    print('Enter class:');
    String studentClass = stdin.readLineSync()!;

    // Assuming there are 5 subjects with marks
    print('Enter marks for subject 1:');
    int subject1Marks = int.parse(stdin.readLineSync()!);

    print('Enter marks for subject 2:');
    int subject2Marks = int.parse(stdin.readLineSync()!);

    print('Enter marks for subject 3:');
    int subject3Marks = int.parse(stdin.readLineSync()!);

    print('Enter marks for subject 4:');
    int subject4Marks = int.parse(stdin.readLineSync()!);

    print('Enter marks for subject 5:');
    int subject5Marks = int.parse(stdin.readLineSync()!);

    // Calculate total marks and percentage
    int totalMarks = subject1Marks +
        subject2Marks +
        subject3Marks +
        subject4Marks +
        subject5Marks;
    double percentage = (totalMarks / 500) * 100;
    percentage = double.parse(percentage.toStringAsFixed(2));

    // Determine grade based on percentage
    String grade;
    if (percentage >= 90) {
      grade = 'A+';
    } else if (percentage >= 80) {
      grade = 'A';
    } else if (percentage >= 70) {
      grade = 'B';
    } else if (percentage >= 60) {
      grade = 'C';
    } else if (percentage >= 50) {
      grade = 'D';
    } else {
      grade = 'F';
    }

    // Print the marksheet
    print('Student Name: $studentName');
    print('Roll Number: $rollNumber');
    print('Class: $studentClass');
    print('Percentage: $percentage%');
    print('Grade Obtained: $grade');

  }

  String? evenOdd(){
    print('Enter a number:');
    int number = int.parse(stdin.readLineSync()!);

    if (number % 2 == 0) {
      print('$number is even.');

      if (number % 5 == 0) {
        print('$number is divisible by 5.');
      } else {
        print('$number is not divisible by 5.');
      }
    } else {
      print('$number is odd.');

      if (number % 7 == 0) {
        print('$number is divisible by 7.');
      } else {
        print('$number is not divisible by 7.');
      }
    }
  }

  int? greatestAndLowestNumber(){
    print('Enter the first number:');
    int num1 = int.parse(stdin.readLineSync()!);

    print('Enter the second number:');
    int num2 = int.parse(stdin.readLineSync()!);

    print('Enter the third number:');
    int num3 = int.parse(stdin.readLineSync()!);

    int greatest = num1;
    int lowest = num1;

    if (num2 > greatest) {
      greatest = num2;
    } else if (num2 < lowest) {
      lowest = num2;
    }

    if (num3 > greatest) {
      greatest = num3;
    } else if (num3 < lowest) {
      lowest = num3;
    }

    print('The greatest number is: $greatest');
    print('The lowest number is: $lowest');
  }

  String? rootOfNumber(){
    print("Enter The Number");
    int? number = int.parse(stdin.readLineSync()!);

    print("square root of ${number} is ${sqrt(number)}");

  }

  String? CelsiustoFahrenheit(){
    print("Enter a Fahrenheit Number ");
    int? celcius = int.parse(stdin.readLineSync()!);

    double FahrenheitNumber = (celcius * 9/5) + 32;

    print(FahrenheitNumber);
  }
}
