/* 
Clasificador de clima
Según la temperatura ingresada, devuelve un mensaje con emojis y colores ANSI en consola.
 */

import 'dart:io';

double clasificador(double temperature) {

  
  if (temperature < 0) {
    print('Clima polar ❄️');
  } else if (temperature >= 40) {
    print(' subtropical/desértico 🔥');
  } else if (temperature >= 30) {
    print('Clima mediterráneo ☀️');
  } else if (temperature >= 10) {
    print('Clima templado 🌡️');
  } else {
    print('clima de tundra 🥶');
  }

  return temperature;
}

void main() {
  print('agrega la temperatura actual:  ');
  try {
    double temperature = double.parse(stdin.readLineSync()!);
    clasificador(temperature);
  } catch (e) {
    print('hubo un error, intenta nuevamente');
  }
}
