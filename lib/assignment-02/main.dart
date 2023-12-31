
import 'dart:io';
// assignment-02

void main() {
  var ListMethodsAssignment = ListMethods();

  // Q.1: Create a list of names and print all names using list.

  var ListOfNames = ListMethodsAssignment.ListOfNames();
  print('Q 01');
  print("List of names $ListOfNames ");

  // Q.2: Create an empty list of type string called days.
  // Use the add method to add names of 7 days and print all days.

  var ListOFDaysNames = ListMethodsAssignment.ListOFDaysNames();
  print("Printed days name after added Days names $ListOFDaysNames");

  // Q.3: Create a list of Days and remove one by one from the end of list.

  var removeDaysOneByOneFromLast =
      ListMethodsAssignment.removeDaysOneByOneFromLast(ListOFDaysNames);

  print(removeDaysOneByOneFromLast);

  // Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

  var smallestAndGreatestNumber =
      ListMethodsAssignment.smallestAndGreatestNumber();

  // Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

  var keysLength = ListMethodsAssignment.keysLength();

  print("where key length match with 4 $keysLength ");

  // Q.6: Create Map variable name world then inside it create countries Map,
  // Key will be the name country & country value will have another map having capitalCity,
  // currency and language to it. by using any country key print all the value of Capital & Currency.

  var gettingCapitalAndCurrencyFromCountry =
      ListMethodsAssignment.gettingCapitalAndCurrencyFromCountry();


  // Q.7:
  // Map<String, double> expenses = {
  //   'sun': 3000.0,
  //   'mon': 3000.0,
  //   'tue': 3234.0,
  // };
  //
  // Check if "fri" exist in expanses;
  // if exist change it's value to 5000.0 otherwise add 'fri' to expenses and
  // set its value to  then print expenses.

  var expenseDayExistOrNo = ListMethodsAssignment.expenseDayExistOrNo();
  print("Q.07");
  print(expenseDayExistOrNo);

  // Q.8: remove all false values from below list by using removeWhere
  // or retainWhere property.
  //
  // List<Map<String, bool>> usersEligibility = [
  // {'name': 'John', 'eligible': true},
  // {'name': 'Alice', 'eligible': false},
  // {'name': 'Mike', 'eligible': true},
  // {'name': 'Sarah', 'eligible': true},
  // {'name': 'Tom', 'eligible': false},
  // ];

  var checkingIfFalseValueExistThenRemoveIt =
      ListMethodsAssignment.checkingIfFalseValueExistThenRemoveIt();

  // Q.9: Given a list of integers, write a dart code that returns the
  // maximum value from the list.
  var greatestNumber = ListMethodsAssignment.greatestNumber();

  // Q.10: Write a Dart code that takes in a list of strings and removes
  // any duplicate elements, returning a new list without duplicates.
  // The order of elements in the new list should be the same as
  // in the original list.

  var checkAnyDuplicatesString =
      ListMethodsAssignment.checkAnyDuplicatesString();

  // Q 11: Write a Dart code that takes in a list and an integer n as parameters.
  // The program should print a new list containing the first n elements from the
  // original list.

  var printingList = ListMethodsAssignment.printingList();




  // Q.12: Write a Dart code that takes in a list of strings and prints a new list
  // with the elements in reverse order. The original list should remain unchanged.

  var listReversed = ListMethodsAssignment.listReversed();

  // Q.17: Given a list of integers, write a Dart code that uses the map() method
  // to create a new list with each value squared. The program should take in the
  // original list as a parameter and print the new list.


  var squaredValueFromList = ListMethodsAssignment.squaredValueFromList();

  // Q.18: Create a map named "person" with the following key-value pairs:
  // "name" as "John", "age" as 25, "isStudent" as true. Write a Dart code
  // to check if the person is both a student and over 18 years old.
  // Print "Eligible" if both conditions are true, otherwise print "Not eligible".


  var checkUserCondition = ListMethodsAssignment.checkUserCondition();


  // Q.19: Given a map representing a product with keys
  // "name", "price", and "quantity", write Dart code to check if
  // the product is in stock. If the quantity is greater than 0, print "In stock",
  // otherwise print "Out of stock".

  var stockChecker = ListMethodsAssignment.stockChecker();


  // Q.20: Create a map named "car" with the following key-value
  // pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true.
  // Write Dart code to check if the car is a sedan and red in color.
  // Print "Match" if both conditions are true, otherwise print "No match".

  var brandMatcher = ListMethodsAssignment.brandMatcher();

  // Q.21: Given a map representing a user with keys
  // "name", "isAdmin", and "isActive",
  // write Dart code to check if the user is an active admin.
  // If the user is both an admin and active, print "Active admin",
  // otherwise print "Not an active admin".

  var isUserAdminAndActiveORNot = ListMethodsAssignment.isUserAdminAndActiveORNot();


  // Q. 22:  Given a map representing a shopping cart with keys as product names and values
  // as quantities, write Dart code to check if a product named "Apple" exists in the
  // cart. Print "Product found" if it exists, otherwise print "Product not found".

  var  shoppingCart  = ListMethodsAssignment.shoppingCart();
 }

class ListMethods {
  ListMethods();

  // Q 01
  ListOfNames() {
    List names = [
      "Zubair",
      "Haseeb",
      "Anas",
      "Jahanzaib",
    ];

    return names;
  }

  // Q 02
  ListOFDaysNames() {
    List<String> Days = [];
    print("Q 02");
    print("Printed days name before added Days names $Days");

    Days.add("Monday");
    Days.add("Tuesday");
    Days.add("Wednesday");
    Days.add("Thursday");
    Days.add("Friday");
    Days.add("Saturday");
    Days.add("Sunday");

    return Days;
  }

  // Q 03
  removeDaysOneByOneFromLast(ListOFDaysNames) {
    print("Q 03");
    print("before remove days name  $ListOFDaysNames");
    for (var i = ListOFDaysNames.length; i > 0; i--) {
      ListOFDaysNames.remove(ListOFDaysNames[i - 1]);
      print("during Loop $ListOFDaysNames");
    }

    return ListOFDaysNames;
  }

  // Q 04
  smallestAndGreatestNumber() {
    List<int> numbersList = [21, 1, -20, 30, 4, 25, 6, 7, 8, 9, 10, 55];
    var greatestNumber = 0, lowestNumber = numbersList[0];
    numbersList.forEach((e) {
      if (e > greatestNumber) {
        greatestNumber = e;
      } else if (e <= lowestNumber) {
        lowestNumber = e;
      }
    });
    print("Q 04");
    print("greatestNumber $greatestNumber");
    print("lowestNumber $lowestNumber");
  }

  // Q 05
  keysLength() {
    Map<String, dynamic> userData = {
      "name": 'Muhammad Zubair',
      "phone": '0341269075',
      "rollNumber": 'flutter-xyz'
    };
    print("Q 05");
    print(userData);
    print(userData.keys);

    var allKeys = userData.keys;
    var keysLength = allKeys.where((element) => element.length == 4);
    return keysLength;
  }

  // Q 06
  gettingCapitalAndCurrencyFromCountry() {
    Map<String, dynamic> world = {
      'countries': {
        'USA': {
          'capitalCity': 'Washington, D.C.',
          'currency': 'US Dollar',
          'language': 'English',
        },
        'Pakistan': {
          'capitalCity': 'ISB',
          'currency': 'PKR',
          'language': 'Urdu',
        },
        'Japan': {
          'capitalCity': 'Tokyo',
          'currency': 'Japanese Yen',
          'language': 'Japanese',
        },
      },
    };

    String countryKey = 'Pakistan';

    String capitalCity = world['countries'][countryKey]['capitalCity'];
    String currency = world['countries'][countryKey]['currency'];

    print("Q.06");
    print('Capital of $countryKey: $capitalCity');
    print('Currency of $countryKey: $currency');

  }

  // 07
  expenseDayExistOrNo() {
    Map<String, double> expenses = {
      'sun': 3000.0,
      'mon': 3000.0,
      'tue': 3234.0,
    };

    expenses.putIfAbsent('fri', () => 5000.0);

    return expenses;
  }

  // Q 08
  checkingIfFalseValueExistThenRemoveIt() {
    List<Map<String, dynamic>> usersEligibility = [
      {'name': 'John', 'eligible': true},
      {'name': 'Alice', 'eligible': false},
      {'name': 'Mike', 'eligible': true},
      {'name': 'Sarah', 'eligible': true},
      {'name': 'Tom', 'eligible': false},
    ];

    print('Q. 08');
    print('printed before removed false value from list $usersEligibility ');
    usersEligibility.removeWhere((element) => element['eligible'] == false);
    print('printed after removed false value from list $usersEligibility ');
  }

  // Q 09
  greatestNumber() {
    List<int> numbersList = [21, 1, -20, 66, 4, 25, 6, 7, 8, 9, 10, 55];
    var greatestNumber = 0;
    numbersList.forEach((e) {
      if (e > greatestNumber) {
        greatestNumber = e;
      }
    });
    print("Q 09");
    print("greatestNumber $greatestNumber");
  }

  // Q 10
  checkAnyDuplicatesString() {
    List<String> cityNamesWithDuplicatesNames = [
      "karachi",
      'lahore',
      'islamabad',
      'islamabad',
      'lahore',
      'punjab'
    ];
    List<String> uniqueCityNames = [];

    print("Q. 10");

    print("cityNamesWithDuplicatesNames  $cityNamesWithDuplicatesNames");
    cityNamesWithDuplicatesNames.forEach((element) {
      if (!uniqueCityNames.contains(element)) {
        uniqueCityNames.add(element);
      }
    });
    print("uniqueCityNames $uniqueCityNames");
  }

  // Q 11

    printingList(){
      List<T> getFirstNElements<T>(List<T> originalList, int n) {
        return originalList.sublist(0, n);
      }

      List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      int n = 5;

      List<int> newList = originalList.sublist(0, n);

      print("Q.11");
      print(newList);
    }


  // Q 12
  listReversed(){
    List<String> names = ['zubair', 'haseeb', "jahanzain", "anas"];
    print(names);
    List<String> namesWithReverseOrder = List.from(names.reversed) ;
    print("Q. 12");
    print(namesWithReverseOrder);
  }


  // Q. 17
  squaredValueFromList() {

    List<int> numbers = [1,2,3,5,5,7,8,8,9,9,6];
    List<int> squareNumbers = numbers.map((int e) => e * e).toList();
    print("Q. 17");
    print(numbers);
    print(squareNumbers);

  }

  // Q. 18
  checkUserCondition() {
    Map<String, dynamic> userData = {
      "name" : "John",
      "age" : 25,
      "isStudent" : true
    };

    print("Q. 18");
    if((userData['age'] > 18) && userData['isStudent'] == true ) {
      print("Eligible");
    }else{
      print("Not Eligible");
    }

  }

  //Q. 19
  stockChecker(){
    Map<String, dynamic> productData = {
      "name": "headPhone",
      "quantity": 12,
      "price": 300,

    };

    print("Q. 19");
    if(productData['quantity'] > 0){
      print("In Stock");
    }else{
      print("Out of Stock");
    }
  }

  //Q. 20
  brandMatcher() {

    Map<String, dynamic> carData ={
      "brand" : "Toyota",
      "color" : "Red",
      "isSedan" : true
    };

    print("Q. 20");
    if((carData['isSedan'] == true) && (carData['color'] == 'Red')){
      print("Match");
    }else{
      print("No Match");
    }
  }

  // Q. 21
  isUserAdminAndActiveORNot(){
    Map<String, dynamic> userData = {
      'name': 'Muhammad Zubair',
      'isActive': true,
      'isAdmin': true
    };
    bool isActive = userData['isActive'];
    bool isAdmin = userData["isAdmin"];

    print("Q. 21");
    if(isActive && isAdmin){
      print("active admin");
    }else{
      print("Not an active admin");
    }
  }


  // Q. 22
   shoppingCart() {
     Map<String, dynamic> cart = {
       'productName' : 'Orange',
       'quantities': 20
     };
     bool isApple = cart.containsValue("Apple");

     print("Q. 22");
     if(isApple){
       print("Product found");
     }else{
       print("Product not found");
     }
  }




}