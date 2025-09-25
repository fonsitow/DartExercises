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
  print("Escribe los numeros y presiona Enter.");
  print("Escribe 'calcular' para ver el promedio y terminar.");
  print("Escribe 'fin' para salir sin calcular.");

  List<double> numeros = [];

  // bucle de pregunta
  while (true) {
    stdout.write('agrega los numeros que desea calcular: ');
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
}
