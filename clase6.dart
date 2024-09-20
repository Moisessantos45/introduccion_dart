//funciones
// como se delaran las funciones
void main() {
  //cuando lleva la funcion {} se debe de especificar el nombre del argumento
  String mensaje = saludar6(nombre:"Moises", apellido: "santos");
  print(mensaje);
  //cuando no lleva ni [] ni {} solo se psan los argumentos
  String mensaje2 = saludar3("Moises", "santos");
  print(mensaje2);
}

//se debe de espeficar que va a retornar

String saludar() {
  return "Hola";
}

String saludar2() => "Hola";

// en las funciones se dbe de especificar el tipo de dato que va a retornar
//ademas a los argumentos debe de especificar el tipo de dato
int sumar(int a, int b) {
  return a + b;
}

//funcion de flecha
int sumar2(int a, int b) => a + b;

//si queremos que un argumento sea opcional se le pone []
String saludar3(String nombre, [String? apellido]) {
  // assert(nombre != null, "El nombre no puede ser null");
  apellido = apellido ?? "";
  // apellido ??= "";
  return "Hola $nombre $apellido";
}

//si queremos que un argumento sea opcional se le pone {}
String saludar4({String nombre = "", String apellido = ""}) {
  return "Hola $nombre $apellido";
}

//otra forma de hacerlo opcional es {}
String saludar5({String? nombre, String? apellido}) {
  return "Hola $nombre $apellido";
}

//si queremos que el argumento se requerido debe de agrega rquiered
String saludar6({required String nombre, String apellido = ""}) {
  return "Hola $nombre $apellido";
}
