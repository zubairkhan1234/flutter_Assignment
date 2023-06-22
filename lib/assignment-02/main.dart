
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

  List<String> Days = [];

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


}


