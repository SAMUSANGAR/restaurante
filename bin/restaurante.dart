import 'App.dart';
import 'Database.dart';


main()async{
  await Database().instalacion();
  print('Bienvenido a mi restaurante');
  App.inicioApp();


}

