
// assignment-02


void main() {

  // created Names of List using List Method
  List names = [
    "Zubair",
    "Haseeb",
    "Anas",
    "Jahanzaib",
  ];

  print("Printed All Names $names");

  List<String> Days =[] ;

  print("Printed days name before added Days names $Days");

  Days.add("Monday");
  Days.add("Tuesday");
  Days.add("Wednesday");
  Days.add("Thursday");
  Days.add("Friday");
  Days.add("Saturday");
  Days.add("Sunday");

  print("Printed All days name after added Days names $Days");

  Days.removeLast();

  print("Printed All days name after removed last Day name $Days");



  List<String> DaysNames =   ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
  print("before Loop $DaysNames");
  for (var i = DaysNames.length; i > 0 ; i--) {
    DaysNames.remove(DaysNames[i - 1]);
    print("after Loop $DaysNames");
  }



  List<int> numbers = [1,2,3,4,5,6,67,8,8,];
  List<bool> EvenOrOdd = [];


  for (var i = 0; i < numbers.length ; i++) {
    var element = numbers[i];
    // print(element);
    if(element % 2  == 0){
    // print("even $element");
      EvenOrOdd.add(true);

  }else{
    // print("odd $element");
      EvenOrOdd.add(false);
    }
  }


  List<int> numbersList = [21,1,-20,30,4,25,6,7,8,9,10,55];
  var greatestNumber=0 ,lowestNumber = numbersList[0];
  numbersList.forEach((e){
    if(e > greatestNumber){
      greatestNumber = e;
    }else if(e <= lowestNumber){
      lowestNumber = e;
    }
  });
  print( "greatestNumber $greatestNumber");
  print("lowestNumber $lowestNumber");


  EvenOrOdd.removeWhere((element) =>  element == false);
  print("EvenOrOdd $EvenOrOdd");

  // EvenOrOdd.retainWhere((element) => element == false);
  // print("EvenOrOdd $EvenOrOdd");

  // List<int> numbersIsEven = [1,2,3,4,5,6,67,8,8,];
  // print(numbersIsEven);
  //
  // for (var i = numbersIsEven.length; i > 0 ; i--) {
  //   var element = numbersIsEven[i];
  //   // print(element);
  //   if(element % 2  == 0){
  //     // print("even $element");
  //     EvenOrOdd.remove(element);
  //   }else{
  //     // print("odd $element");
  //     numbersIsEven[i] = element + 1;
  //   }
  // }
  //
  // print(numbersIsEven);

}


