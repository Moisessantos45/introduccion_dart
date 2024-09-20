//declaremos una funcion
//delaracion de tipos
void main() {
  // var nombre = "Juan";
  // var apellido = "Perez";
  // var edad = 30;
  // var estatura = 1.80;
  String nombre = "Juan";
  String apellido = "Perez";
  int edad = 30;
  double estatura = 1.80;
  //constantes no se pude combiar
  final String nombre2 = "Juan";
  //late es una forma de inicializar una variable despues
  late final String apellido2 = "Perez";
  // nunca puede cambiar de datos
  const habilidad = "Programar";
  //lista de datos o arreglo una forma
  final List<String> habilidades = ["Programar", "Cocinar", "Jugar"];
  //otra forma de declarar una lista
  final musica = <String>["Rock", "Pop", "Salsa"];

  //agregar ? a una variable para que pueda ser nula
  String? mama = null;
  //para imprimir en consola se usa print y imprimir un dato lleva el simbolo $
  print("Hola $nombre $apellido");
  print("Edad: $edad");
  print("Estatura: $estatura");
  //imprimir una lista
  print(habilidades);
  print(musica);
  //imprimir un dato de la lista
  print(habilidades[0]);
  //imprimir la longitud de la lista
  print(habilidades.length);
  print(habilidad);
}
