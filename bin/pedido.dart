import 'dart:io';
import 'claseRestaurante.dart';
import 'Listas.dart';

pedidoArecoger(){
  listarMenu();
    print("Pedido para recoger");
      Restaurante nombre = new Restaurante();
     //Comida
     stdout.writeln('Intoduce un numero que quieres del menu');
     String Nombre = stdin.readLineSync() ?? "error";
     nombre.Nombre = Nombre;
    return pedidoR();
  }
  datosArecoger(){
    print("Intoduce tu nombre y numero de telefono para realizar su pedido");
      Restaurante nombre = new Restaurante();
     //Nombre
     stdout.writeln('Introduce tu nombre');
     String Nombre = stdin.readLineSync() ?? "error";
     nombre.Nombre = Nombre;
     
     //Teléfono
     stdout.writeln("Introduce tu numero de teléfono");
     String telefono = stdin.readLineSync()?? "error";
     nombre.telefono = telefono;
      print('Su pedido estara listo a recoger en nuestro local  en 30 minutos');
  }
     
  pedidoR(){
   int? opcion;
    do {
      stdout.writeln('''}:
        1 - ¿Algo mas?
        2 - Nada mas ''');
      opcion = int.tryParse(stdin.readLineSync() ?? 'e');
    } while (opcion == null);
     switch(opcion){
      case 1:
         Restaurante nombre = new Restaurante();
     //Nombre
     stdout.writeln('Introduce otro numero que quieres del menu');
     String Nombre = stdin.readLineSync() ?? "error";
     nombre.Nombre = Nombre;
     pedidoR();
        break;
      case 2:
      datosArecoger();
        break;
      default:
        print('Opción no válida');
    }
  }
  pedidoAdomicilio(){
  listarMenu();
    print("Pedido a domicilio");
      Restaurante nombre = new Restaurante();
      //Comida
     stdout.writeln('Intoduce un numero que quieres del menu');
     String Nombre = stdin.readLineSync() ?? "error";
     nombre.Nombre = Nombre;
    return pedidoD();
  }
  datosAdomicilio(){
    print("Intoduce tu nombre, numero de telefono y tu direccion para realizar su pedido");
      Restaurante nombre = new Restaurante();
     //Nombre
     stdout.writeln('Introduce tu nombre');
     String Nombre = stdin.readLineSync() ?? "error";
     nombre.Nombre = Nombre;
     
     //Teléfono
     stdout.writeln("Introduce tu numero de teléfono");
     String telefono = stdin.readLineSync()?? "error";
     nombre.telefono = telefono;

      //Dirreccion
     stdout.writeln('Introduce tu direccion');
     String direccion = stdin.readLineSync()?? "error";
     nombre.direccion = direccion;
     print('Su pedido estara listo en su domicilio en 40 minutos');

  }
  pedidoD(){
   int? opcion;
    do {
      stdout.writeln('''}:
        1 - ¿Algo mas?
        2 - Nada mas ''');
      opcion = int.tryParse(stdin.readLineSync() ?? 'e');
    } while (opcion == null);
     switch(opcion){
      case 1:
         Restaurante nombre = new Restaurante();
     //Nombre
     stdout.writeln('Introduce otro numero que quieres del menu');
     String Nombre = stdin.readLineSync() ?? "error";
     nombre.Nombre = Nombre;
     pedidoD();
        break;
      case 2:
      datosAdomicilio();
        break;
      default:
        print('Opción no válida');
    }
  }