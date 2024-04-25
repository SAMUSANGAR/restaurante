import 'dart:io';
import 'claseRestaurante.dart';



listarMenu(){
stdout.writeln ('''Entradas:
Antipasto Italiano - Selección de embutidos, quesos y aceitunas - 5 euros 
Queso Fundido - Queso derretido con chorizo o champiñones, servido con tortillas - 6,50 euros


Platos Principales:
Italianos:
Lasaña de Carne - 6 euros
Risotto de Champiñones y Trufa - 8 euros
Pollo Marsala - 7 euros

Mexicanos:
Tacos de Camarón - 9 euros
Mole Poblano con Pollo - 10 euros
Tostadas de Tinga de Pollo - 5 euros

Postres:
Panna Cotta de Vainilla - 7 euros
Tarta de queso - 6 euros

Bebidas:
Vino Chianti (Italiano) - 9 euros (copa)
Margarita de Mango - 8 euros
Agua mineral - 2 euros
Refrescos - 2,50 euros''');  }

listarInfo(){
stdout.writeln('''
        NOMBRE: Mi Restaurante
        UBICACION: Calle Principal 123
        TIPOS DE COCINA: Mexicana o Italiana
        HORARIO: Lunes a Viernes 12:00 - 24:00, Sábado y Domingo 13:00 - 2:00
        CAPACIDAD MAXIMA : 70
        ACEPTA RESERVAS: si
        ''');
}
volverMenu(menuRestaurante){
  int? opcion;
    do {
      stdout.writeln('''
        1 - Volver al menu''');
      opcion = int.tryParse(stdin.readLineSync() ?? 'e');
    } while (opcion == null);
     switch(opcion){
      case 1:
        menuRestaurante();
        break;
      default:
        print('Opción no válida');
    }

}
pedidoArecoger(){
    print("Pedido para recoger");
      Restaurante nombre = new Restaurante();
     //Nombre
     stdout.writeln('Introduce tu nombre');
     String Nombre = stdin.readLineSync() ?? "error";
     nombre.Nombre = Nombre;
     //Teléfono
     stdout.writeln("Introduce tu numero de teléfono");
     String telefono = stdin.readLineSync()?? "error";
     nombre.telefono = telefono;
     
  }