/* Crear una función en Dart que reciba una contraseña (String) 
y devuelva true si cumple con todos los requisitos, o false si no.
✅ Requisitos de la contraseña
- Debe tener al menos 8 caracteres
- Debe contener al menos una letra mayúscula
- Debe contener al menos un número
- Debe contener al menos un carácter especial ($ # ! @ * ( ))
*/

import 'dart:io';

bool logica(bool mayuscula, bool numeros, bool caracteres, bool longitud){
  bool validacion = true;

    if(!mayuscula){
      print('necesitas mayusculas');
      validacion= false;
    }
    if(!numeros){
      print('necesitas numeros');
      validacion= false;
    }
    if(!caracteres){
      print('necesitas un caracter especial como ! @ # % ^ & * . , ');
      validacion= false;
    }
    if(!longitud){
      print('necesitas minimo 8 caracteres');
      validacion= false;
    }
    
    return validacion;
}

void main(){

  stdout.write('introduce tu contraseña:');
  String? input = stdin.readLineSync();

  if(input == null || input.isEmpty){
    print('Error agrega tu contraseña nuevamente');
    return main();
  }

  bool mayuscula = input.contains(RegExp(r'[A-Z]'));
  bool numeros = input.contains(RegExp(r'[0-9]'));
  bool longitud = input.length >= 8;
  bool caracteres = input.contains(RegExp(r'[!@#$%^&*.,]'));


  if(logica(mayuscula, numeros, caracteres, longitud)){
    print('Bienvenido');
  }else{
    print('Contra invalida, verifica y vuelve a intentarlo');
    return main();
  }
}

