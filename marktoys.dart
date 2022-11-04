void main() {
  //variables de precio y presupuesto
  List<int> prices = [1, 2, 3, 4];
  int k = 7;
  //salida
  print(maxToys(prices, k));
}

//funcion max de juguetes
maxToys(List<int> prices, int k) {
  int numToys = 0;
  int dolar = k;
  //ordenar precios de menor a mayor
  List<int> sortedPrices = prices;
  sortedPrices.sort();

  int i = 0;
  // comparar que dolar y precio sean mayor a 0
  while (dolar > 0 && i < prices.length) {
    // si dolar es mayor que precio aumentar num de juguete y reducir dolar
    if (dolar > prices[i]) {
      numToys++;
      dolar -= prices[i];
    }
    i++;
  }

  print('numero maximo de juguetes:');
  return numToys;
}     

// maxToys(List<int> prices, int k) {
//   //ordenar precios de menor a mayor
//   List<int> sortedPrices = prices;
//   sortedPrices.sort();


//   return prices.takeWhile((x) => (k -= x) > 0);
// }
