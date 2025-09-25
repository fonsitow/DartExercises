// Crea una función que reciba una lista de edades
//y devuelva cuántas personas hay en cada grupo:

//hacemos el mapa donde estan las edades y la definicion

import 'dart:io';

Map<String, int> calificarEdades(List<int> edades) {
  //creamos las variables
  int menores = 0;
  int adultos = 0;
  int mayores = 0;

  //recorremos la lista que solicitamos en el map y agregamos los casos
  for (var edad in edades) {
    if (edad < 18) {
      // print('eres menor de edad');
      menores++;
    } else if (edad >= 65) {
      // print('estas viejito');
      mayores++;
    } else {
      // print('eres mayor de edad');
      adultos++;
    }
  }

  return {'menores': menores, 'adultos': adultos, 'mayores': mayores};
}

void main() {
  print('Agrega las edades y dividelas por etapas de vida');

  List<int> edades = [];

  while (true) {
    stdout.write('agrega las edades que desea agregar: ');
    String? entrada = stdin.readLineSync();

    if (entrada?.toLowerCase() == 'fin') {
      print(calificarEdades(edades));
      print(edades);
      break;
    }

    int? numero = int.tryParse(entrada ?? '');

    if (numero != null) {
      edades.add(numero);
      print('$numero agregado');
    } else {
      print('error');
    }
  }
}
