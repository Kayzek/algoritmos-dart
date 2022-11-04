Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 4), () {
                        return 'Hola mundo';
  });  
}

void main(){
  
  print('estamos a punto de pedir datos');
  
  httpGet('http://google.com').then( (data) {
    print( data );
  });
  
  print('ultima linea');
}