//que son los Futures

void main() {
  print("Inicio del main");
  final String url = "https://api.nasa.com/aliens";
  httpGet(url).then((data) {
    print(data);
  }).catchError((err) {
    print("Error: $err");
  });
  print("Fin del main");
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    return "respuesta de la peticion http";
  });
}
