// Validación de contraseñas: 
//Verifica si una contraseña tiene al menos 8 caracteres, una mayúscula y un número.

import 'dart:io';

bool logica(bool mayuscula, bool numeros, bool longitudValida, bool caracteres){
      bool esValida = true;

  if (mayuscula == false) {
    print(' Tu contraseña necesita al menos una mayúscula');
    esValida = false;
  }
  if (numeros == false) {
    print(' Agrega al menos un número');
    esValida = false;
  }
  if (longitudValida == false) {
    print(' Necesitas mínimo 8 caracteres');
    esValida = false;
  }
  if (caracteres == false) {
    print(' Falta un carácter especial como \$ # ! @ * ( ) . ,');
    esValida = false;
  }

  return esValida;
}


void main(){
  print('introduce una contraseña: ');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Error, no has ingresado la contraseña');
    return;
  }

  bool mayuscula = input.contains(RegExp(r'[A-Z]'));
  bool numeros = input.contains(RegExp(r'[0-9]'));
  bool longitudValida = input.length >= 8;
  bool caracteres = input.contains(RegExp(r'[$#!@*().,]'));

  if (logica(mayuscula, numeros, longitudValida, caracteres)) {
    print('✅ Contraseña válida');
  } else {
    print('❌ Contraseña inválida');
  }
}

