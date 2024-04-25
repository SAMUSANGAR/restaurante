import "dart:io";
import 'Usuario.dart';
import 'Listas.dart';
class App {
   inicioApp() async {
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
   menuRestaurante()async {
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
        await Menu(menuRestaurante);
        break;
      case 2:
        await Reservas(menuRestaurante);
        break;
      case 3:
        await Pedido(menuRestaurante);
        break;
        case 4:
        await infoRestaurante(menuRestaurante);
        break;
      case 5:
        print("Adios");
        break;
      default:
        print('Opción no válida');
    }
  }

   menuLogueado(Usuario usuario) async {
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
        await Menu(menuRestaurante);
        break;
      case 2:
        await Reservas(menuRestaurante);
        break;
      case 3:
        await Pedido(menuRestaurante);
        break;
        case 4:
        await infoRestaurante(menuRestaurante);
        break;
      case 5:
        print("Adios");
        break;
      default:
        print('Opción no válida');
    }
  }

   login() async {
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

  crearUsuario() async {
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
 Menu(menuRestaurante) {
    listarMenu();
      volverMenu(menuRestaurante);
 }

 Reservas(menuRestaurante) {
   volverMenu(menuRestaurante);
  }

  Pedido(menuRestaurante) {
    int? opcion;
    do {
      stdout.writeln('''Como quiere el pedido }:
        1 - A domicilio
        2 - Para recoger''');
      opcion = int.tryParse(stdin.readLineSync() ?? 'e');
    } while (opcion == null);
     switch(opcion){
      case 1:
        ();
        break;
      case 2:
      pedidoArecoger();
        print('Tu pedido estara listo en 30 minutos');
        break;
      default:
        print('Opción no válida');
    }
    volverMenu(menuRestaurante);
  }

 infoRestaurante(menuRestaurante) {
 listarInfo();
 volverMenu(menuRestaurante);
}
volverMenu(menuRestaurante){
  int? opcion;
    do {
      stdout.writeln('''
        1 - Volver al menu
        2 - Salir del Menu''');
      opcion = int.tryParse(stdin.readLineSync() ?? 'e');
    } while (opcion == null);
     switch(opcion){
      case 1:
        menuRestaurante();
        break;
        case 2:
        print('Adios');
        break;
      default:
        print('Opción no válida');
    }

}
