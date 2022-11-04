void main() {
  //definir tamaño de la lista
  List<List<int>> arr = [
    [1, 1, 1, 0, 0, 0],
    [0, 1, 0, 0, 0, 0],
    [1, 1, 1, 0, 0, 0],
    [0, 0, 2, 4, 4, 0],
    [0, 0, 0, 2, 0, 0],
    [0, 0, 1, 2, 4, 0]
  ];
  //imprimir sumatoria del arreglo
  print(hourglassSum(arr));
}

//funcion sumatoria del arreglo
hourglassSum(List<List<int>> arr) {
  //sumatoria maxima
  int maxSum = -64;
  //se recorren los elementos del arreglo
  for (int i = 1; i < 5; i++) {
    for (int j = 1; j < 5; j++) {
      // se almacena en sum la sumatoria de los elementos
      int sum = arr[i][j] +
          arr[i + 1][j - 1] +
          arr[i + 1][j] +
          arr[i + 1][j + 1] +
          arr[i - 1][j - 1] +
          arr[i - 1][j] +
          arr[i - 1][j + 1];
      // si la sumatoria es mayor al maximo entonces este almacena la sumatoria
      if (sum > maxSum) {
        maxSum = sum;
      }
    }
  }
  return maxSum;
}
