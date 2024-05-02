
import 'dart:io';


listarMenu(){
stdout.writeln ('''Entradas:
1-Antipasto Italiano - Selección de embutidos, quesos y aceitunas - 5€
2-Queso Fundido - Queso derretido con chorizo o champiñones, servido con tortillas - 6,50 €


Platos Principales:
Italianos:
3-Lasaña de Carne - 6 €
4-Risotto de Champiñones y Trufa - 8 €
5-Pollo Marsala - 7 €

Mexicanos:
6-Tacos de Camarón - 9 €
7-Mole Poblano con Pollo - 10 €
8-Tostadas de Tinga de Pollo - 5 €

Postres:
9-Panna Cotta de Vainilla - 7 €
10-Tarta de queso - 6 €

Bebidas:
11-Vino Chianti (Italiano) - 9 € (copa)
12-Margarita de Mango - 8 €
13-Agua mineral - 2 €
14-Refrescos - 2,50 €''');  }

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
