//que son los Streams

void mian() {
  emitNumber().listen((event) {
    print(event);
  });
}

Stream<int> emitNumber() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}
