void main() {
  print("Hello, World!");
  // <datatyoe> <variablename> = <value>;
  int a = 1, b = 2;
  print(a + b);
  double pi = 3.14;
  print(pi * a * b);
  String str = "Shinchan";
  print("My name is " + str);
  int firstVal = 0;
  firstVal += 10;
  print(firstVal);

  String greeting = "Hello";
  print(greeting);
  greeting += "1";
  print(greeting);
  print("${greeting} Yoooo \$12");
  String new0 = '''
  
  Hello
  
  
  World''';
  print(new0);
  //new way to create var
  //var/final/const variableName = value;
  var someVal = '10';
  //var keeps same data type thru out unlike dynamic
  print(someVal.runtimeType);
  final someValue = "100";
  const someValue1 = "1000";
  print(someValue);
  print(someValue1);
  print("-" * 10);
  //var means value can vary
  //final means value can be only set once
  //const means value remains same
  //var is mutable and final and const is immutable
  //both final and const cannot be reassigned then whats the diff
  final d = DateTime.now();
  //   const n = DateTime.now();
  print(d);
  //   print(n);
  //final is runtime constant and const is compile time constant DateTime.now is runtime variable
  final DateTime dateTime = DateTime.now();
  print(dateTime);
  //optional variables
  //String/int/bool and null
  String? nullval = null; // var of string can have nulll value
  //final? vali = null; is not allowed 
  print (nullval);
  nullval = "nullvalue";
  print(nullval.length);
  nullval = null;
  //print (nullval!.length);Uncaught Error, error: Error: Unexpected null value.
  print(nullval?.length??0);
  //? ! nullware operators ? is asking and ! is exuding dominance notnull
  
  //If Statements
  
  int age = 13;
  if (age >= 18) {
    print ("user is adult");
  }
  else if (age >= 13) {
    print ("user is teen");
  }
  else {
    print ("user is child");
  }
  
  //==, >= , <=, < , >, 
  // && || 
  //bitwise & |
 //Ternary
  String value = age > 10 ? "yeah" : "no";
  print(value);
   //switch
  switch(age) {
    case 13 when value == "yeah": print("age is 13");
    case 18 : print("age is 18");
    default : print("age is $age"); 
  }
  String destinationZone = 'PQR';
  double weightInKgs = 6;
  
  switch(destinationZone) {
    case 'ABC' : print("The shipping cost is ${weightInKgs * 7}");break;
    case 'PQR' : print("The shipping cost is ${weightInKgs * 10}");break;
    case 'XYZ' : print("The shipping cost is ${weightInKgs * 5}");break;
    default : print("Error: Invalid Destination Zone Entered!");
  }
  
}
