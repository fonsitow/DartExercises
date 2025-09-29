/* Diccionario bilingüe
Objetivo: Crear un diccionario español-inglés y permitir traducciones. 
*/

import "dart:io";

Map<String, String> traducciones = {'Hola': 'Hello', 'Azucar': 'Sugar'};

void main() {

  //bucle
  while (true) {
    stdout.write('Que palabra en ingles deseas conocer (escribe salir para salir del diccionario): ');
    String? input = stdin.readLineSync()?.trim().toLowerCase();

    if (input == null || input.toLowerCase() == 'salir') {
      print('¡Hasta luego!');
      break; 
    }

    if (input.isEmpty) {
        continue; 
    }

    if (traducciones.containsKey(input)) {
      print('Traducción: ${traducciones[input]}');
    } else {
      print('Traducción de "$input" no encontrada.');
      stdout.write('Por favor, ingresa la traducción al inglés para agregarla (o solo presiona Enter para omitir): ');
      
      String? input2 = stdin.readLineSync()?.trim().toLowerCase();

      if (input2 != null && input2.isNotEmpty) {
        traducciones[input] = input2;
        print(' ¡Traducción agregada! "$input" ahora significa "$input2".\n');
      } else {
        print('Traducción no agregada.\n');
      }
    }
  }
}