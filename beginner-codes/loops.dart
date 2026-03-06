void main() {
  //Loops
  
  //for loop
  
//   for (init; condition; increment/decrement/update) {
     
//   }
  for (int i = 1; i <= 10; i++ ) {
    print ("Hello World $i");
  }
  String one = "hello";
  print(one.substring(0, 1)); //h
  for (int i = 0; i < one.length; i++) {
    print(one[i]);
  }
  
  //for in will be learnt in iterables or list
  
  //while loop
  
//   while (condition) {
//     //code
//   }
  print("-"*10);
  int i = 0;
  while (i < one.length) {
    print(one[i]);
    i++;
  }
  //while and for are entry controlled
  //Do while loops - exit controlled
  print("-"*10);
  do {
    print (one[--i]);
  }while (i > 0);
  
   print("-"*10);
  //continue to ignore current iteration,  break for breaking out of loop
  
}