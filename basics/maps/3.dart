/* Registro de notas de estudiantes
Objetivo: Guardar las notas de varios estudiantes y calcular su promedio */

import 'dart:io';

void promedios(Map<String, List<double>> registro) {
  registro.forEach((nombre, listaNotas) {
    double promedio = listaNotas.reduce((a, b) => a + b) / listaNotas.length;
    print(" - $nombre tiene un promedio de ${promedio.toStringAsFixed(2)}");
  });
}

void agregarNotas(Map<String, List<double>> registro) {
  stdout.write('Nombre del estudiante: ');
  String? nombre = stdin.readLineSync();

  stdout.write('✏️ Ingresa las notas separadas por coma (ej: 18,19.5,20): ');
  String? entradaNotas = stdin.readLineSync();

  if (nombre != null && entradaNotas != null) {
    //AGREGAR OBJETOS AL MAP SI SON DIFERENTES DE NULL
    List<double> notas = entradaNotas //se le da un valor a la lista del map
        .split(',') //Esto divide el texto en partes usando la coma como separador:
        /* Esto recorre cada elemento de la lista y:
        n.trim() elimina espacios extra (por ejemplo " 19.5" → "19.5").
        double.tryParse(...) intenta convertir el texto a número decimal.
        ?? 0.0 significa: si no se puede convertir 
        (por ejemplo si el texto está mal escrito), usa 0.0 como valor por defecto. */
        .map((n) => double.tryParse(n.trim()) ?? 0.0)
        .toList(); //Convierte el resultado final en una lista:

    registro[nombre] = notas;
    print(' Notas registradas para $nombre.');
  } else {
    print(
        '❌ Entrada inválida. Asegúrate de escribir el nombre y las notas correctamente.');
  }
}

void main() {
  Map<String, List<double>> notas = {};

  while (true) {
    print('\n MENÚ DE NOTAS');
    print('- 1 Agregar notas');
    print('- 2 Ver promedios');
    print('- 3 Salir');
    stdout.write('Selecciona una opción: ');
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarNotas(notas);
        break;
      case '2':
        promedios(notas);
        break;
      case '3':
        print('Gracias por usar el programa, hasta luego');
        return;
      default:
        print('Ocurrio un error inesperado');
    }
  }
}
