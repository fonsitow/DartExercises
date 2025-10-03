/*
 * Escribe una función que reciba dos palabras (String) y retorne
 * verdadero o falso (Bool) según sean o no anagramas.
 * - Un Anagrama consiste en formar una palabra reordenando TODAS
 *   las letras de otra palabra inicial.
 * - NO hace falta comprobar que ambas palabras existan.
 * - Dos palabras exactamente iguales no son anagrama.
 */

bool isAnagram(String a, String b) {
  // Si son exactamente iguales, no son anagramas
  if (a.toLowerCase() == b.toLowerCase()) return false;

  var sortedA = a.toLowerCase().split('')..sort();
  var sortedB = b.toLowerCase().split('')..sort();

/* 
! .toLowerCase() pasa a minusculas
! .split('') convierte la palabra en lista de letras.
! ..sort() ordena la lista (el .. aplica el método directamente).
! .join junta la lista nuevamente
* .trim() en Dart se usa para 
* eliminar los espacios en blanco al principio y al final de una cadena de texto.
*/

  return sortedA.join() == sortedB.join();
}

void main() {
  print(isAnagram('Queso', 'Palo'));
  print(isAnagram('Amor', 'Amor'));
  print(isAnagram('Pan', 'mar'));
  print(isAnagram('Palo', 'Alop'));
  print(isAnagram('Emor', 'Remo'));
}
