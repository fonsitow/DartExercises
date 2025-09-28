// Objetivo: Crear un mapa con productos y precios, y permitir consultar el precio por nombre.

import 'dart:io';

Map<String, int> productos = {
  'Arepa': 5,
  'Empanadas': 8,
  'Panquecas': 9,
  'Waffles': 12,
};

void products(Map<String, int> productos) {
  (productos.keys.forEach((a) => print(' - $a')));
}

void prices(Map<String, int> productos) {
  print('\n🔍 Productos disponibles:');
  productos.keys.forEach((p) {
    print(' - $p');
  });

  stdout.write('\n¿De qué producto quieres conocer el precio?: ');
  String? nombre = stdin.readLineSync();

  if (nombre != null && productos.containsKey(nombre)) {
    print('💰 El precio de $nombre es \$${productos[nombre]}');
  } else {
    print('❌ Producto no encontrado. Intenta con uno de la lista.');
  }
}

void main() {
  while (true) {

    menu();
    stdout.write('Escoje una opcion: ');
    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
      case 'Lista de productos':
        products(productos);
        break;
      case '2':
      case 'Precio de productos':
        prices(productos);
        break;
      case '3':
      case 'Salir':
        print('Chao');
        return;
      default:
        print('hubo un error');
    }
  }
}

void menu() {

  print('  BIENVENIDO AL MENU, QUE DESEA SABER');
  print('1: Lista de productos');
  print('2: Precio de productos');
  print('3: Salir');

}
