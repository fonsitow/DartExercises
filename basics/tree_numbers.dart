// double calcularPromedio(double a, b, c){
//   return (a + b + c) / 3;
// }

// void main (){
//   print(calcularPromedio(17.5, 20, 12.5).toStringAsFixed(2));
// }


double promedioNumbers( List<double> numeros){
  if( numeros.isEmpty){
    return 0;
  }

  double suma = 0;
  for (var numero in numeros) {
    suma +=  numero;
  }

  return suma / numeros.length;
}

void main(){
  List<double> calculo = [17.5, 20, 12.5];
  double promedio = promedioNumbers(calculo);
  print('El promedio es: ${promedio.toStringAsFixed(2)}');
}