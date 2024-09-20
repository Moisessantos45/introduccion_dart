void main() {
  //maps
  //declarar un mapa
  final persona = {
    "nombre": "Juan",
    "apellido": "Perez",
    "edad": 30,
    "estatura": 1.80
  };

  //especificar el tipo de datos
  final Map<String, dynamic> persona2 = {
    "nombre": "Juan",
    "apellido": "Perez",
    "edad": 30,
    "estatura": 1.80,
    "habilidades": <String>["Programar", "Cocinar", "Jugar"]
  };
  print(persona2);
  //cuando conocemos que tipo de datos son
  final Map<String, String> persona3 = {
    "nombre": "Juan",
    "apellido": "Perez",
  };
  print(persona3);

  //imprimir los valores
  print(persona["nombre"]);
  print(persona["apellido"]);
  print("Edad: ${persona["edad"]}");
}
