//uso de async y await

void main() async {
  final String url = "https://api.nasa.com/aliens";
  print("Inicio del main");
  try {
    final String value = await getAllPost(url);
    print(value);
  } on Exception catch (e) {
    print("Error: No se pudo completar la peticion $e");
  } catch (e) {
    print("Error: $e");
  }
  print("Fin del main");
}

Future<String> getAllPost(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception("No se pudo completar la peticion");
  // return "respuesta de la peticion http";
}
