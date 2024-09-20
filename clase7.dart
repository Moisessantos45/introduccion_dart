//tema clases

void main() {
  //llamar la clase o crear un nueva

  final Persona persona =
      Persona(nombre: "moises", apellido: "juan", edad: 22, estatura: 1.89);
  print(persona.nombre);
}

class Persona {
  String nombre;
  String apellido;
  int edad;
  double estatura;
  double _peso;

  //manera mas usar de declarar una clase
  // Persona(this.nombre, this.apellido, this.edad, this.estatura);

  //manera contolada
  // Persona(String nombre, String apellido, int edad, double estatura)
  //     : nombre = nombre,
  //       apellido = apellido,
  //       edad = edad,
  //       estatura = estatura,
  //       _peso = 0.0;

  //una manera comune donde se usa {}
  // Persona(
  //     {required this.nombre,
  //     required this.apellido,
  //     required this.edad,
  //     this.estatura = 0,
  //     });

  //validar los datos por ejemplo cuando viene de un json de una api
  Persona.fromJson(Map<String, dynamic> json)
      : nombre = json["nombre"] ?? "No name",
        apellido = json["apellido"] ?? "No apellido",
        edad = json["edad"] ?? 0,
        estatura = json["estatura"] ?? 0.0,
        _peso = json["peso"] ?? 0.0;

  //el asser sirve para validar
  Persona(
      {required String nombre,
      required String apellido,
      required int edad,
      required double estatura,
      double peso = 0})
      : assert(peso < 0, "El peso no puede ser negativo"),
        _peso = peso,
        nombre = "No name",
        apellido = "No apellido",
        edad = 0,
        estatura = 0.0;

  double get pesoP {
    return _peso;
  }

  //una forma de validar
  set pesoPer(double value) {
    if (value < 0) throw "El peso no puede ser negativo";
    _peso = value;
  }

  //suscribir un metodo
  @override
  String toString() {
    return "$nombre $apellido $edad $estatura";
  }
}
