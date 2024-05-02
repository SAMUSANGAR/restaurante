import 'dart:io';
import 'App.dart';

class Reserva {
  String nombreCliente;
  int numPersonas;
  String fecha;
  String hora;

  Reserva(this.nombreCliente, this.numPersonas, this.fecha, this.hora);

  @override
  String toString() {
    return 'Reserva para $nombreCliente, $numPersonas personas, el $fecha, a las $hora';
  }
}

 hacerReservas(verReservas,hacerReserva,cancelarReserva,menuRestaurante) {
  var reservas = <Reserva>[];

  while (true) {
    stdout.writeln('''Bienvenido al sistema de reservas del restaurante
        1 - Ver reservas
        2 - Hacer una reserva
        3 - Cancelar reserva
        4 - Salir''');
    stdout.write('Por favor, seleccione una opción: ');
    var opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        verReservas(reservas);
        break;
      case 2:
        hacerReserva(reservas);
        break;
      case 3:
        cancelarReserva(reservas);
        break;
      case 4:
        print('Saliendo del sistema de reservas. ¡Hasta luego!');
        volverMenu(menuRestaurante);
        return;
      default:
        print('Opción inválida. Por favor, seleccione una opción válida.');
    }
  }
}

void verReservas(List<Reserva> reservas) {
  if (reservas.isEmpty) {
    print('No hay reservas disponibles en este momento.');
  } else {
    print('\nReservas actuales:');
    for (var i = 0; i < reservas.length; i++) {
      print('Reserva ${i + 1}: ${reservas[i]}');
    }
  }
}

void hacerReserva(List<Reserva> reservas) {
  stdout.write('Ingrese el nombre para la reserva: ');
  var nombre = stdin.readLineSync()!;
  stdout.write('Ingrese el número de personas: ');
  var numPersonas = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese la fecha de la reserva (DD/MM/AAAA): ');
  var fechaStr = stdin.readLineSync()!;
  var fecha = (fechaStr);
   stdout.write('Ingrese la hora de la reserva (HH:MM): ');
   var hora=  stdin.readLineSync()!;
  var reserva = Reserva(nombre, numPersonas, fecha, hora);
  reservas.add(reserva);
  print('Reserva realizada con éxito: $reserva');
}

void cancelarReserva(List<Reserva> reservas) {
  if (reservas.isEmpty) {
    print('No hay reservas para cancelar.');
  } else {
    verReservas(reservas);
    stdout.write('Ingrese el número de reserva que desea cancelar: ');
    var indice = int.parse(stdin.readLineSync()!) - 1;
    if (indice >= 0 && indice < reservas.length) {
      var reservaCancelada = reservas.removeAt(indice);
      print('Reserva cancelada con éxito: $reservaCancelada');
    } else {
      print('Número de reserva inválido.');
    }
  }
}
