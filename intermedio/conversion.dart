import 'dart:io';
//convertir grados celsius a farenheit

double celsiusConvert(double celsius){
  return (celsius * 9 / 5) + 32 ;
}

void main(){
  stdout.write ('agrega los grados a convertir: ');
  double result = double.parse(stdin.readLineSync()!);
  print(celsiusConvert(result));
}
