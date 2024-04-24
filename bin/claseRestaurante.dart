

class Restaurante {
  String nombre;
  String ubicacion;
  List<String> tiposDeCocina;
  List<String> horario;
  List<String> menu;
  int capacidadMaxima;
  bool aceptaReservas;

  var restaurante;

  Restaurante({
    required this.nombre,
    required this.ubicacion,
    required this.tiposDeCocina,
    required this.horario,
    required this.menu,
    required this.capacidadMaxima,
    required this.aceptaReservas,
  });
}

