//async y await

void main() {
  emitNumber().listen((event) {
    print(event);
  });
}

Stream emitNumber() async* {
  final value = [1, 2, 3, 4, 5];
  for (int i in value) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
