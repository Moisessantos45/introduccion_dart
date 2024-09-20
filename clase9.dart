//mixins

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract mixin class Volador {
  void volar() => print("Estoy volando");
}

abstract mixin class Caminante {
  void caminar() => print("Estoy caminando");
}

abstract mixin class Nadador {
  void nadar() => print("Estoy nadando");
}

class Delfin extends Mamifero with Nadador {
  void nadar() => print("Estoy nadando como un delfin");
}

class Murcielago extends Mamifero with Caminante, Volador {
  void volar() => print("Estoy volando como un murcielago");
}

class Gato extends Mamifero with Caminante {
  void caminar() => print("Estoy caminando como un gato");
}

void mian() {
  final murcielago = Murcielago();
  murcielago.caminar();
  murcielago.volar();

  final gato = Gato();
  gato.caminar();
}
