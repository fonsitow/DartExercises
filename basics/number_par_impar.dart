// import 'dart:io';

// void main(){

//   stdout.write ('introduce un numero:');
//   int number = int.parse(stdin.readLineSync()!);

//   if(number % 2 == 0){
//     print('el numero es par');
//   }else if (number % 2 == 1){
//     print ('el numero es impar');
//   }else {
//     print('numero invalido');
//   };
// }



void main(){
  for (var i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      print('el numero $i es par');
    }else {
      print('el numero $i es impar');
    }
  }
}