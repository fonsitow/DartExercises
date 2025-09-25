import 'dart:io';

double clasificarPromedios(List<double> numbers) {
  if (numbers.isEmpty) {
    return 0;
  }

  double nota = 0;
  for (var element in numbers) {
    nota += element;
  }

  return (nota / numbers.length);
}

void main() {
  print("Escribe la nota de la materia y presiona Enter.");
  print("Escribe 'calcular' para ver el promedio y terminar.");
  print("Escribe 'fin' para salir sin calcular.");

  List<double> numeros = [];

  // bucle de pregunta
  while (true) {
    stdout.write('agregar nota: ');
    String? entrada = stdin.readLineSync();

    //rompe el ciclo de agregar numeros
    if (entrada?.toLowerCase() == 'fin') {
      numeros.clear();
      break;
    }

    if (entrada?.toLowerCase() == 'calcular') {
      // return resultado(numeros); mala practica
      resultado(numeros);
      print(numeros);
      numeros.clear();
      return main();
    }

    //variable donde se convierte la entrada en numero
    double? numero = double.tryParse(entrada ?? '');

    // if (entrada != null) {    Mala practica esto puede dar error al momento de insertar un texto
    //   numeros.add(numero!);     se tiene que verificar el numero no la entrada, asi no usamos el !
    if (numero != null) {
      numeros.add(numero);
      print('$numero agregado');
    } else {
      print('error');
    }
  }
}

void resultado(List<double> numeros) {
  
  double result = clasificarPromedios(numeros);

  print('El promedio es: ${result.toStringAsFixed(2)}');

  if (result < 10) {
    print('E de Eres bien bruto ');
  } else if (result >= 18) {
    print('A: Acho estudiaste');
  } else if (result >= 15) {
    print('B: Bueno');
  } else if (result >= 13) {
    print('C: Carajo papi ud le falta estudiar');
  } else {
    print('D: Diablo papi en la linea');
  }
}
