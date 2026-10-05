void main() async {
  print('inicio del programa');
  try{
  final value = await httpGet('http://Richar-parker.com/fly');
   print('exito: $value');

  } on Exception catch(err){
print('tenemos una exception: $err}');

  }
  
  
  catch(err){
  print('Algo terrible pasi: $err');

  } finally{
    print('fin del try y catch');
  }
 
  print('Fin del programa');
}


Future<String> httpGet(String url) async {

  await Future.delayed( const Duration(seconds : 1)); 
  throw Exception('no hay parametros en el URL');
//  throw 'Error en la peticion';
 //    return 'Tenemos un valor de la peticion';

}