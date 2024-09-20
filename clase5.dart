void main() {
  //lists
  final numbers = [1, 2, 3, 4, 5];
  //metodos
  numbers.clear();
  //verificar si esta vacia
  numbers.reversed;
  //invertir la lista
  //el reverser no modifica la lista original pero retorna un iterable
  numbers.add(6);
  //agregar un elemento
  numbers.length;
  //remover un elemento
  numbers.remove(3);
  //remover un elemento en una posicion
  numbers.removeAt(2);
  //remover el ultimo elemento
  numbers.removeLast();
  //remover todos los elementos
  //imprimir la lista
  print(numbers);
  //volver a crear la lista con los elementos
  numbers.toList();
  //convertir a lista
  //eliminar duplicados
  numbers.toSet();
  //filtrar elementos
  //where convierte a un iterable
  numbers.where((element) => element > 2);
}
