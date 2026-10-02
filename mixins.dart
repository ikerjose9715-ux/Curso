abstract class Animal{}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin volador {
  void volar() => print ('estoy volando!');
}

mixin caminante {
  void caminar() => print ('estoy caminando!');
}

mixin nadador {
  void nadar() => print ('estoy nadando!');
}


class Delfin extends Mamifero with nadador {}
class Murcielago extends Mamifero with volador, caminante {}
class Gato extends Mamifero with caminante {}
class Paloma extends Ave with volador,caminante {}
class Pato extends Ave with nadador,caminante,volador {}
class Tiburon extends Pez with nadador {}
class Pezvolador extends Pez with nadador,volador {}

void main() {
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  final namor = Pato();
  namor.caminar();
  namor.nadar();
  namor.volar();
  }