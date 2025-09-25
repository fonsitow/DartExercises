import 'dart:io';
import 'dart:math';

const pi = 3.1416 ;

void calcularCirculo(double diametro) {
  double radio = diametro / 2;
  double perimetro = pi * diametro;
  double area = pi * pow(radio, 2);
  
  print('Diámetro: $diametro');
  print('Radio: $radio');
  print('Perímetro: ${perimetro.toStringAsFixed(2)}');
  print('Área: ${area.toStringAsFixed(2)}');
}

void main(){
  print('introduce un diametro');
  var diametro = double.parse(stdin.readLineSync()!);
    calcularCirculo(diametro);
}