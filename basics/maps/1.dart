// Dado un texto, cuenta cuántas veces aparece cada palabra.

void main() {
  String oracion = 'manzana pera manzana uva pera manzana';
  Map<String, int> contador = {};

    for (var palabras in oracion.split(' ')) {
      contador[palabras] = (contador[palabras] ?? 0) + 1;
      }
      print(contador);
  }

