/* - Mini‑juego en consola
Un “adivina el número” con pistas creativas
(por ejemplo, “estás ardiendo” si estás cerca, “congelado” si estás lejos).
*/

import 'dart:io';
import 'dart:math';

void main() {
  int intentos = 10;
  final numberRandom = Random().nextInt(100) + 1;

  print('- BIENVENIDO AL JUEGO ADIVINA EL NUMERO');
  print('Intenta adivinar un número entre 1 y 100.');
  print('Escribe "salir" para finalizar el juego.');
  while (true) {
    stdout.write('Añade un numero: ');
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print('Agrega un numero porfavor');
      continue;
    }

    if (input == 'Salir'.toLowerCase()) {
      print('Esta bien, hasta luego');
      break;
    }

    int? intento = int.tryParse(input);
    if (intento == null) {
      print('entrada no valida. ingresa un numero valido');
      continue;
    }

    int diferencia = (numberRandom - intento).abs();
    
    intentos--;
    if (intentos == 0) {
      print('perdiste');
      break;
    }

    if (intento == numberRandom) {
      print('GANASTE Lo lograste en $intentos intentos.');
      break;
    } else if (diferencia <= 5) {
      print('CALIENTE CALIENTE');
    } else if (diferencia <= 10) {
      print('TIBIO');
    } else {
      print('FRIO');
    }

    if (intento < numberRandom) {
      print('Un poco mas arriba');
    } else {
      print('un poco mas abajo');
    }
  }
}

/*
  1 - generar un numero random por descubrir
  2 - logica para que detecte cuando esta cerca o lejos
  3 - logica de intentos
*/
