void main() {
  // a es arreglo. n es cambio de arreglo. d numero de rotaciones
  List<int> a = [1, 2, 3, 4, 5];

  leftRotation(a, 5, 2);
  for (int i = 0; i < 5; i++) {
    print(a[i]);
  }
}

leftRotation(List<int> a, int n, int d) {
  for (int i = 0; i < d; i++) {
    leftRotationOnce(a, n);
  }
}

leftRotationOnce(List<int> a, int n) {
  // guardar primer elemento en variable temporal
  int temp = a[0];
  // cambiar elementos restantes uno por uno a la izquierda
  for (int i = 0; i < (n - 1); i++) {
    a[i] = a[i + 1];
    a[n - 1] = temp;
    // copiar el valor de temporal al ultimo elemento de la variable y repetir
    // hasta cumplir la condicion
  }
}
