
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
  print("Q.06");
  print(gettingCapitalAndCurrencyFromCountry);

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



  // Q.12: Write a Dart code that takes in a list of strings and prints a new list
  // with the elements in reverse order. The original list should remain unchanged.

  var listReversed = ListMethodsAssignment.listReversed();


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
    // Map<String, Map> World = {
    //   "pakistan" :{
    //     "capitalCity": "ISB", "currency": "PKR" , "language": "URDU"
    //   },
    //   "America" :{
    //     "capitalCity": "ISB", "currency": "PKR" , "language": "URDU"
    //   }
    // };
    //
    // print(World);
    //
    // var worldMapKeys = World.keys;
    // print(worldMapKeys);
    // var country =  World.containsKey('pakistan');
    // print(country);
    // var country =  World.entries;
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

  // Q 12
  listReversed(){
    List<String> names = ['zubair', 'haseeb', "jahanzain", "anas"];
    print(names);
    List<String> namesWithReverseOrder = List.from(names.reversed) ;
    print("Q. 12");
    print(namesWithReverseOrder);
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