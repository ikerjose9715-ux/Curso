void main(){
  print('inicio del programa');

  httpGet('http://Richar-parker.com/fly').then((value){
    print(value);
  }).catchError((err){
    print('Error:$err');
  });

  print('Fin del programa');
}


Future<String> httpGet(String url){
  return Future.delayed( const Duration(seconds : 1),(){
//    return 'Respuesta de la peticion http';

throw 'Error de la peticion http';

  });

}