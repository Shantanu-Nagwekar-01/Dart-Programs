void main() {
  //print(printName); //prints Closure 'printName' it gives address of the function and not the value returned by the function
  printName();
  print(getName("Shantanu"));
  var id = getID();
  //to access the values of the record
  // we can use .$1, .$2, etc. where the number
  // represents the position of the value in the record
  print("Name: ${id.$2} and Roll No. ${id.$1}");
  var (rollno, name) =
      getID(); //destructuring the record into individual variables
  print("Using destructured format: ${rollno} and ${name}");
  // ?? is the null coalescing operator it returns the value on its left if
  // it is not null otherwise it returns the value on its right
  String temp = pname() ?? "null";
  print(temp);

  //using named arguments
  printInfo(true, name: "Shantanu", age: 21, greeting: "Hello", id: 1);
  final stuff = getInfo();
  print("Name: ${stuff.name} and Age: ${stuff.age}");

  final printFunction = printStuff();
  //storing the returned function in a variable
  printFunction(); //calling the returned function
  print(printFunction);
  print(() {
    print("Yononono!");
  });

  print(() {
    print("Yononono!");
  }()); //immediately invoking the anonymous function

  () {
    print(
      "Direct printing from anonymous function without storing it in a variable",
    );
  }(); //immediately invoking the anonymous function without storing it in a variable

  //Closure: () => Null is a closure that captures the surrounding context and can access variables from that context even after the context has been destroyed
  //Closures are created when a function is defined inside another function and the inner function captures variables from the outer function's scope. The inner function can access and modify these variables even after the outer function has finished executing. This allows for powerful programming patterns such as callbacks, event handlers, and functional programming techniques. Closures are a fundamental concept in Dart and are widely used in various programming scenarios.
}

/*
  function definition:
  <datatype> <funtion name> (<optional arguments>) {
    <function body>
    <Function Body>
    return value; //if datatype == void return nothing 
  }

  if <datatype> is not specified ten it is considered 
  as dynamic and can return any datatype but it is not 
  recommended to use dynamic as it can lead to crashing
  of programs if the returned value
  is not handled properly

  final or var can also be used to store function return
  values but not const as const is used 
  for compile time constants and function
  return values are not known at compile time

  <optional arguments> can be of two types:
  1. Positional arguments: these are the arguments
     that are passed in the order they
     are defined in the function declaration
  2. Named arguments: these are the arguments that are passed
     by specifying their names and values in the function call
  
  if data type of a argument is not specified
  then it is considered as dynamic and can accept 
  any datatype but it is not recommended to use dynamic
  as it can lead to crashing of programs if the passed
  value is not handled properly
  
*/

void printName() {
  print("Shantanu");
}

String getName(String name) {
  return name;
}

/*printName() {
  
  }
  is also valid syntax but its data type or return type is dynamic
  best to give proper data types to function declaration and avoid using dynamic to prevent crashing of programs
 * */

//we can return one or multiple datatypes by wrapping them into records or tuples

(int, String) getID() {
  return (1, "Shantanu");
}

String? pname() {
  return "Null"; //return null or a string value
}

void printInfo(
  bool isAdult, {
  required String name,
  required int age,
  required String greeting,
  int? id,
}) {
  print("$greeting, my name is $name and I am $age years old.");
  if (id != null) {
    print("My ID is $id");
  }
}

//isAdult is a positional argument and name, age, greeting, id are named arguments
//required keyword is used to make named arguments mandatory and if they are not passed in the function call then it will give an error
//id is an optional named argument and it can be null if not passed in the function call
//positional arguments must be passed before named arguments in the function call

//we can use {int age, String name} like record syntax in data type as well to return records
({int age, String name}) getInfo() {
  return (age: 21, name: "Shantanu");
}

//we can return a function too inside a function

Function printStuff() {
  return () {
    print("Yoooooo");
  };
}

String printString() {
  return "Hello World!";
}

// it can also be written as:
//fat-arrow function syntax is used for single line functions where the function body consists of a single expression and the value of that expression is returned implicitly without the need for an explicit return statement
String printString2() =>
    "Hello World!"; //arrow syntax for single line functions
