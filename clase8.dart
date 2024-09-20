///abatraccion

void main() {}

enum TipoVehiculo { terrestre, acuatico, aereo }

abstract class Vehiculo {
  String nombre;
  TipoVehiculo tipo;

  Vehiculo({
    required this.nombre,
    required this.tipo,
  });

  void desplazarse() {
    print("El vehiculo se desplaza");
  }
}

//implementacion de extens

class Auto extends Vehiculo {
  Auto({required String nombre})
      : super(nombre: nombre, tipo: TipoVehiculo.acuatico);
  void desplazarse() {
    print("El auto se desplaza por tierra");
  }
}


class Lancha implements Vehiculo {
  @override
  String nombre;

  @override
  TipoVehiculo tipo;

  Lancha({required this.nombre}) : tipo = TipoVehiculo.acuatico;

  @override
  void desplazarse() {
    print("La $nombre se desplaza por agua");
  }
}