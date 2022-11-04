fibonacci(int n) {
  //si el numero es mayor a 30
  if (n >= 30) {
    throw Exception('no puedes usar un numero mayor a 30');
  }

  // calculo de secuencia
  if (n < 2) {
    return n; // calculo base; si n es menor a 2 regresa n
  } else
    return fibonacci(n - 2) +
        fibonacci(
            n - 1); // calculo recursivo utilizando formula fn = fn-1 + fn-2
}

void main() {
  print(fibonacci(0));
  print(fibonacci(1));
  print(fibonacci(2));
  print(fibonacci(3));
  print(fibonacci(4));
  print(fibonacci(5));
  print(fibonacci(6));
  print(fibonacci(7));
  print(fibonacci(8));
}

// Fibonacci program using loop
// void main() {
//   int n1=0,n2=1,n3;
//   print(n1);
//   print(n2);
  
//   for(int i = 2 ;i <= 16; i++){
//    n3 = n1+n2;
//     print('$n3');
//     n1 = n2;
//     n2 = n3;
//   }
// }

// Fibonacci program using recursion
// int fibonacci(int n) => n <= 2 ? 1 : fibonacci(n - 2) + fibonacci (n - 1);
// main() {
//   String output = "";
//   for (int i = 1; i <= 16; ++i) {
//     output += fibonacci(i).toString() + ", ";
//   }
//   print(output + "...");
// }