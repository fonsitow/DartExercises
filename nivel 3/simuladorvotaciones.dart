/* - Simulador de votación
Usa Map y List para registrar votos 
y mostrar resultados en tiempo real con barras ASCII.
*/

import 'dart:io';
import '../utilidades.dart' as util;

Map<String, int> candidatos(List<bool> votos) {
  //creo los candidatos
  int Alfonso = 0;
  int Luis = 0;

  for (var voto in votos) {
    if (voto) {
      Alfonso++;
    } else {
      Luis++;
    }
  }

  return {'Alfonso': Alfonso, 'Luis': Luis};
}

//reciben quien si voto y quien no
List<bool> votantes = [];

//guarda quienes votan
Map<String, String> users = {};

void main() {
  util.encabezado('   Simulador de votacion', 30);
  while (true) {
    stdout.write(
        'Por cual quieres votar? (A/L) o (salir) para cerrar el proceso de votacion: ');
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print('Entrada no valida, intenta de nuevo.');
      continue;
    }

    if (input == 'salir') {
      print('Hasta luego..');
      break;
    }

    stdout.write('Agrega tu usuario: ');
    String? inputUser = stdin.readLineSync();

    if (inputUser != null && users.containsKey(inputUser)) {
      users[inputUser];
    } 

    if (inputUser == null || inputUser.isEmpty) {
      print('Usuario inválido. Intenta de nuevo.');
      continue;
    }

    if (users.containsKey(inputUser)) {
      print('Usuario duplicado, no se permiten votos dobles');
    }else{
      print('Hola $inputUser gracias por votar');
    }

    if (input == 'A') {
      candidatos(votantes);
      votantes.add(true);
      users[inputUser] = input;
    }else if(input == 'L'){
      candidatos(votantes);
      votantes.add(false);
      users[inputUser] = input;
    }else{
      print('candidato incorrecto');
    }


    candidatos(votantes);
    print(users);

  }}

void votaciones(Map<String, int> votos){
  int maxVotos = votos.values.isEmpty ? 0 : votos.values.reduce((a, b) => a > b ? a : b);
  if (maxVotos == 0) {
    print('No hay votos aún.');
    return;
  }

  int barraMax = 30;
}


