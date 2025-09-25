/* 
- Promedio con formato visual
Calcula el promedio de una lista de números y 
muéstralo con un “termómetro” textual (por ejemplo: ███░░░ según el valor).
*/

import 'dart:io';

double promedioNumeros(List<double> numeros){
  if (numeros.isEmpty){
    return 0;
  }

  double temperature = 0;
    for (var element in numeros) {
      temperature += element;
    }

    return temperature / numeros.length;
}

//TERMOMETRO

void mostrarTermometro(double temperatura, double minTemp, double maxTemp){
  // limite de rango
  temperatura = temperatura.clamp(minTemp, maxTemp);

  //como esta compuesta la barra y el maximo de ancho
  const int anchura = 50;
  const String relleno =  '█';
  const String vacio = '░';

  //Calcular la proporcion de temperatura
  final double proporcion = (temperatura - minTemp) / (maxTemp - minTemp);
  final int lleno = (proporcion * anchura).round();
  final int vacios = anchura - lleno;

  //termometro
  final String barra = '[' + '$relleno' * lleno + '$vacio' * vacios + ']';

  stdout.write('Temperatura: $barra ${temperatura.toStringAsFixed(1)}°C');
}

void main(){
  List<double> valores = [];
    
    while (true) {
      stdout.write(" introduce al menos un valor (o 'salir'): ");
      String? entrada = stdin.readLineSync();
    
    if (entrada == null) continue;
    if (entrada.toLowerCase() == 'salir') break;

    double? valor = double.tryParse(entrada);
    if (valor == null) {
      print("⚠️ Entrada inválida. Intenta de nuevo.");
      continue;
    }

    valores.add(valor);

    double promedio = promedioNumeros(valores);
    print("Promedio: ${promedio.toStringAsFixed(1)}°C");
    double minTemp = 0;
    double maxTemp = 50;
    mostrarTermometro(promedio, minTemp, maxTemp);
    print(""); // línea en blanco para separar

  
  }

  print("Programa finalizado.");

}
