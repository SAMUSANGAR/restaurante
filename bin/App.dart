import "dart:io";
import 'Usuario.dart';
class App {
  static inicioApp() async {
    int? opcion;
    do{
      stdout.writeln('''Elige una opción
      1 - Registrarte
      2 - Iniciar sesion
      3 - Restaurante''');
      String respuesta = stdin.readLineSync() ?? 'e';
      opcion = int.tryParse(respuesta);
    } while(opcion == null || opcion != 1 && opcion !=2 && opcion !=3);
    switch(opcion){
      case 1:
        crearUsuario();
        break;
      case 2:
        login();
        break;
      case 3:
        menuRestaurante();
        break;
      default:
        print('Opción no válida');
    }
  }
  static menuRestaurante()async {
    int? opcion;
    
    do{
      stdout.writeln('''Hola, elige una opción:
        1 - Menu
        2 - Reserva
        3 - Pedido
        4 - Info Restaurante
        5 - Salir''');
      String respuesta = stdin.readLineSync() ?? 'e';
      opcion = int.tryParse(respuesta);
    } while(opcion == null || opcion != 1 && opcion !=2 && opcion !=3  && opcion !=4 && opcion !=5);
      
    switch(opcion){
      case 1:
        await Menu();
        break;
      case 2:
        await Reservas();
        break;
      case 3:
        await Pedido();
        break;
        case 4:
        await infoRestaurante();
        break;
      case 5:
        print("Adios");
        break;
      default:
        print('Opción no válida');
    }
  }

  static menuLogueado(Usuario usuario) async {
    int? opcion;
    String? nombre = usuario.nombre;
    do{
      stdout.writeln('''Hola, $nombre, elige una opción:
        1 - Menu
        2 - Reserva
        3 - Pedido
        4 - Info Restaurante
        5 - Salir''');
      String respuesta = stdin.readLineSync() ?? 'e';
      opcion = int.tryParse(respuesta);
    } while(opcion == null || opcion != 1 && opcion !=2 && opcion !=3  && opcion !=4 && opcion !=5);
    switch(opcion){
      case 1:
        await Menu();
        break;
      case 2:
        await Reservas();
        break;
      case 3:
        await Pedido();
        break;
        case 4:
        await infoRestaurante();
        break;
      case 5:
        print("Adios");
        break;
      default:
        print('Opción no válida');
    }
  }

  static login() async {
    Usuario usuario = new Usuario();
    stdout.writeln('Introduce tu nombre de usuario');
    usuario.nombre = stdin.readLineSync();
    stdout.writeln('Introduce tu constraseña');
    usuario.password = stdin.readLineSync();
    var resultado = await usuario.loginUsuario();
    if(resultado == false){
      stdout.writeln('Tu nombre de usuario o contraseña son incorrectos');
   ();
    } else {
       menuLogueado(usuario);
    }
  }

 static crearUsuario() async {
    Usuario usuario = new Usuario();
    stdout.writeln('Introduce un nombre de usuario');
    usuario.nombre = stdin.readLineSync();
    stdout.writeln('Introduce una constraseña');
    usuario.password = stdin.readLineSync();
    usuario.password = usuario.password;
    await usuario.insertarUsuario();
 ();
 menuLogueado(usuario);
  }
    
  }



 Menu() async {
    
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
Refrescos - 2,50''');
 }


 Reservas() async {
   
  }

  Pedido() {
    int? opcion;
    do {
      stdout.writeln('''Como quiere el pedido }:
        1 - A domicilio
        2 - Para recoger''');
      opcion = int.tryParse(stdin.readLineSync() ?? 'e');
    } while (opcion == null);
    return opcion;
  }



 infoRestaurante() {
 
   stdout.writeln('''
        NOMBRE: Mi Restaurante
        UBICACION: Calle Principal 123
        TIPOS DE COCINA: Mexicana o Italiana
        HORARIO: Lunes a Viernes 12:00 - 24:00, Sábado y Domingo 13:00 - 2:00
        CAPACIDAD MAXIMA : 70
        ACEPTA RESERVAS: si
        ''');

}
