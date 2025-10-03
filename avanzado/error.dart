/*
Crea una función que reciba dos números e intente dividirlos. 
Si el divisor es cero, debe lanzar una excepción personalizada 
(por ejemplo, DivisionPorCeroException). 
Implementa el manejo mediante bloques try-catch, 
asegurando que el programa no se detenga y muestre mensajes claros al usuario.
Añade un bloque finally para indicar el cierre de la operación. 
*/

void divisor(int a, int b) {
  if (a == 0) {
    throw 'DivisionPorCeroException';
  }

  double resultado = a / b;
  print('Resultado: $resultado');
}

void main() {
  try {
    divisor(20, 2);
  } catch (e) {
    print(e); // Muestra el mensaje de la excepción
  } finally {
    print('Operacion finalizada'.toUpperCase());
  }
}
