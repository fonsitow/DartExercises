/* - Generador de contraseñas
Usa Random y colecciones para 
crear contraseñas con patrones personalizables.
*/


import 'dart:io';
import 'dart:math';

void Generador1(){
  var numbers = Random().nextInt(100);
  var numbers2 = Random().nextInt(100);
  print('🔐 Contraseña generada: Al${numbers}Fn${numbers2}');
}
void Generador2(){
  var numbers = Random().nextInt(20);
  var numbers2 = Random().nextInt(30);
  print('🔐 Contraseña generada: ${numbers}Xs${numbers2}WHz');
}
void main(){
  stdout.write('Elije una de los 2 tipos de generadores de Contraseña: ');
  String? input = stdin.readLineSync();
  switch (input) {
    case '1':
      Generador1();
      break;
    case '2':
      Generador2();
      break;
    default:
    print('Algo fallo pruebe otra vez');
  }
}