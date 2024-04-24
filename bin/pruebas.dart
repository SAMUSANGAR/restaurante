import 'dart:io';



listarMenu(){
stdout.writeln ('''Entradas:
Antipasto Italiano - Selección de embutidos, quesos y aceitunas - 5
Queso Fundido - Queso derretido con chorizo o champiñones, servido con tortillas - 6,50


Platos Principales:
Italianos:
Lasaña de Carne - 6
Risotto de Champiñones y Trufa - 8
Pollo Marsala - 7

Mexicanos:
Tacos de Camarón - 9
Mole Poblano con Pollo - 10
Tostadas de Tinga de Pollo - 5

Postres:
Panna Cotta de Vainilla - 7
Tarta de queso - 6

Bebidas:
Vino Chianti (Italiano) - 9 (copa)
Margarita de Mango - 8
Agua mineral - 2
Refrescos - 2,50''');  }

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