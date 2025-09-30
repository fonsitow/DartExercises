import 'dart:io';
import 'dart:math';


String generador({int longitud = 12}){
  const letrasMayus = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const letrasMinus = 'abcdefghijklmnopqrstuvwxyz';
  const numeros = '0123456789';
  const simbolos = '!@#\$%^&*()_-+=<>?';

  final orden = letrasMayus + letrasMinus + numeros + simbolos;
  final random = Random();

  return List.generate(longitud, (index) { //genera una lista con caracteres aleatorios con la longitud indicada
    int pos = random.nextInt(orden.length);
    return orden[pos]; 
  }).join();  //convierte la lista en una sola cadena
}

void main(){
  stdout.write('Indica de que longitud quieres tu contraseña: ');
  String? entrada = stdin.readLineSync();
  int longitud = int.tryParse(entrada ?? '') ?? 12;

  String contrasena = generador(longitud: longitud);
  print('✅ Tu contraseña segura es: $contrasena');
}
