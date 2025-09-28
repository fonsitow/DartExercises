/* 
- Conversor de unidades con historia
Convierte metros a kilómetros, pero añade un texto narrativo: 
“Has recorrido la distancia equivalente a X campos de fútbol”.
 */

import 'dart:io';

const int futbolCampo_Largo = 105;

//metros a kilometros
void convertidor(double metros) {
  double result = metros / 1000;
  print('este seria su resultado en $result km');
}

// el equivalente en un campo de fut
void equivalente(double metros) {
  double result2 = (metros / futbolCampo_Largo);
  print(
    'recorriste exactamente ${result2.toStringAsFixed(2)} campos de futbol',
  );
}

void porcentaje(double metros) {
  double result = (metros / futbolCampo_Largo) * 100;
  print(
    'recorriste ${metros}m y el equivalente de eso a un campo de futbol seria ${result.toStringAsFixed(2)}%',
  );
}

void main() {
  stdout.write('Agrega cuantos metros quieres calcular: ');
  while (true) {
    try {
      double metros = double.parse(stdin.readLineSync()!);

      convertidor(metros);

      //continuacion de el proceso
      continuar(metros);

      if (metros <= futbolCampo_Largo) {
        return porcentaje(metros);
      }
      ;

      break; //rompemos la secuencia si ya se cumple todo lo solicitado
    } catch (e) {
      if (true) {
        print(
          '❌ Error: "${e.toString()}". Asegúrate de ingresar un número válido.',
        );
        continue; //para continuar el ciclo
      }
    }
  }
}

void continuar(double metros) {
  print(
    "¿Deseas conocer sus datos relacionados en un campo de futbol? (s/n): ",
  );

  String? respuesta = stdin.readLineSync();
  if (respuesta == null || respuesta.isEmpty) {
    print('inserta un numero porfavor');
  }
  if (respuesta?.toLowerCase() == 's') {
    print("Calculando...");
    equivalente(metros);
  } else {
    print('Esta bien, gracias por usar el programa');
  }
  ;
}
