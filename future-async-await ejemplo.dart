Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 4), () {
    return 'Hola mundo';
  });  
}

void main() async {
  
  print('estamos a punto de pedir datos');
  
  String data = await httpGet('http://google.com');
  print(data);
  
  print('ultima linea');
}