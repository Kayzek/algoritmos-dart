void main() {
  List<int> array = [8, 6, 4, 2, 1];
  print('el arreglo inicial es: $array');
  List<int> sortedArray = burbuja(array);
  print('el arreglo ordenado es: $sortedArray');
}

burbuja(List<int> array) {
  int count = 0;
  int n = array.length;
  // se ve el orden de los elementos
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        // se cambian los elementos adyacentes si estan en orden decreciente
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
        count += 1; // cambios realizados en el ciclo
      }
    }
  }

  int pElemento = array.first;
  int uElemento = array.last;

  print('el arreglo se ordeno $count en cambios');
  print('el primer elemento es $pElemento ');
  print('el ultimo elemento es $uElemento ');

  return (array);
}
