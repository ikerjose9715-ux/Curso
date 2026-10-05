void main(){
  final pokemon = {
   'name': 'Scuero',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {
      1:'scuero/front.pon',
      2:'scuero/back.png'
    }
  };
  
  print(pokemon);
  print('Name: ${ pokemon ['name']  }');
  print('Name: ${ pokemon ['sprites']  }');
}