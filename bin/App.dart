import 'claseRestaurante.dart';
import "dart:io";


class App {
  static inicioApp() async {
    int? seleccion = pedirOpcion();
    switch (seleccion) {
      case 1:
        Menu();
        break;
      case 2:
        Reservas();
        break;
       case 3:
        Pedido();
        break;
         case 4:
        infoRestaurante();
        break;
      default:
        inicioApp();
    }
  }

  static String _pedirNombre() {
    stdout.writeln("Escribe el nombre del pokémon a consultar");
    return stdin.readLineSync() ?? "error";
  }

  static int? pedirOpcion() {
    int? opcion;
    do {
      stdout.writeln('''Selecciona una de las siguientes opciones:
        1 - Menu
        2 - Reserva
        3 - Pedido
        4 - Info Restaurante''');
      opcion = int.tryParse(stdin.readLineSync() ?? 'e');
    } while (opcion == null);
    return opcion;
  }


static Menu(miRestaurante) async {
    
 }


  static Reservas() async {
   
  }

static  Pedido(Restaurante restaurante) {
    int? opcion;
    do {
      stdout.writeln('''Como quiere el pedido }:
        1 - A domicilio
        2 - Para recoger''');
      opcion = int.tryParse(stdin.readLineSync() ?? 'e');
    } while (opcion == null);
    return opcion;
  }



infoRestaurante(miRestaurante) {
 var miRestaurante = Restaurante(
    nombre: 'Mi Restaurante',
    ubicacion: 'Calle Principal 123',
    tiposDeCocina: ['Mexicana', 'Italiana'],
    horario: ['Lunes a Viernes 12:00 - 22:00', 'Sábado y Domingo 13:00 - 23:00'],
    menu: ['Tacos', 'Pizza', 'Ensaladas'],
    capacidadMaxima: 50,
    aceptaReservas: true,
  );

  print('Nombre del restaurante: ${miRestaurante.nombre}');
  print('Ubicación: ${miRestaurante.ubicacion}');
  print('Tipos de cocina: ${miRestaurante.tiposDeCocina}');
  print('Horario: ${miRestaurante.horario}');
  print('Menú: ${miRestaurante.menu}');
  print('Capacidad máxima: ${miRestaurante.capacidadMaxima}');
  print('Acepta reservas: ${miRestaurante.aceptaReservas ? 'Sí' : 'No'}');


}
}