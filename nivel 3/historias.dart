/* 
* Generador de historias aleatorias
! Combina listas de personajes, lugares y acciones para crear frases únicas cada vez.
*/

import 'dart:math';

import '../utilidades.dart';

List<String> personajes = [
  'Batman',
  'Spiderman',
  'Iron Man',
];

List<String> lugares = [
  'Ciudad gotica',
  'New york',
  'California',
];

List<String> acciones = [
  'Combatir el crimen',
  'Buscar justicia',
  'Salvar personas',
];

String frasesMaker(){
    final random = Random();

    String personaje = personajes[random.nextInt(personajes.length)];
    String lugar = lugares[random.nextInt(lugares.length)];
    String accion = acciones[random.nextInt(acciones.length)];
    
    String oracion = '$personaje estaba en $lugar para lograr su objetivo de $accion';

    return oracion;
}
void main() {
    encabezado('Bienvenido a historias aleatorias', 45);
        print(frasesMaker());
}
