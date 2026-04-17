void main() {
  printName();
  print(getName("Shantanu"));
  var id = getID();
  print("Name: ${id.$2} and Roll No. ${id.$1}");
  var (rollno, name) = getID();
  print("Using destructured format: ${rollno} and ${name}");
  String temp = pname()??"null";
  print(temp);
}

/*
  function definition:
  <datatype> <funtion name> () {
    <Function Body>
    return value; //if datatype == void return nothing 
  }
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
  return (1,"Shantanu");
}

String? pname() {
  return "Null"; 
}
