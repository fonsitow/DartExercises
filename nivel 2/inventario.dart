/* 
- Mapa de inventario interactivo
Usa Map<String, int> para simular un inventario de tienda. 
Permite agregar, quitar y actualizar productos con comandos de texto.
 */

import 'dart:io';

const ansiColors = {
  'reset': '\x1B[0m',
  'red': '\x1B[31m',
  'green': '\x1B[32m',
  'yellow': '\x1B[33m',
  'blue': '\x1B[34m',
  'magenta': '\x1B[35m',
  'cyan': '\x1B[36m',
  'white': '\x1B[37m',
  'bold': '\x1B[1m',
  'underline': '\x1B[4m',
};

Map<String, int> inventario = {};

void main() {
  while (true) {
    menu();
    stdout.write('Selecciona una opción: ');
    String? opcion = stdin.readLineSync();
    switch (opcion) {
      case '1' || 'Agregar producto':
        agregarProducto(inventario);
        break;
      case '2' 'Eliminar producto':
        quitarProducto(inventario);
        break;
      case '3' || 'Actualizar':
        actualizarProducto(inventario);
        break;
      case '4' || 'Ver inventario':
        verInventario(inventario);
        break;
      case '5' || 'Salir' || 'salir':
          print('${ansiColors['red']} Gracias por usar el programa de inventario, vuelva pronto ${ansiColors['reset']}');
        return;
      default:
        print(' Opción inválida. Intenta de nuevo.');
    }
  }
}

void menu() {
  print('\n MENU, SEÑALA EL NUMERO DE LA OPCION A ELEJIR');
  print('1: Agregar producto');
  print('2: Eliminar Producto');
  print('3: Actualizar');
  print('4: Ver inventario');
  print('5: Salir');
}

void agregarProducto(Map<String, int> inventario) {
  stdout.write(
      '${ansiColors['blue']} Agrega un producto : ${ansiColors['reset']}');
  String? nombre = stdin.readLineSync();

  stdout.write(
      '${ansiColors['magenta']} la cantidad deseada : ${ansiColors['reset']}');
  String? cantidad = stdin.readLineSync();

  if (nombre != null && cantidad != null) {
    int cantidadInt = int.tryParse(cantidad) ?? 0;
    inventario[nombre] = cantidadInt;
    print(
        '${ansiColors['green']} Producto agregado exitosamente ${ansiColors['reset']}');
  } else {
    print('Entrada inválida. Intenta de nuevo.');
  }
}

void verInventario(Map<String, int> inventario) {
  print(inventario);
}

void quitarProducto(Map<String, int> inventario) {
  stdout.write('Ingresa el nombre del producto a eliminar: ');
  String? producto = stdin.readLineSync();

  if (producto != null && inventario.containsKey(producto)) {
    inventario.remove(producto);
    print(' Producto "$producto" eliminado del inventario.');
  } else {
    print('El producto no existe en el inventario.');
  }
}

void actualizarProducto(Map<String, int> inventario) {
  stdout.write('Ingresa el nombre del producto para cambiar su cantidad: ');
  String? producto = stdin.readLineSync();

  if (producto != null && inventario.containsKey(producto)) {
    stdout.write(' Ingresa la nueva cantidad: ');
    String? nuevaCantidadTexto = stdin.readLineSync();
    int nuevaCantidad = int.tryParse(nuevaCantidadTexto ?? '') ?? 0;
    inventario[producto] = nuevaCantidad;
    print('✅ Producto "$producto" actualizado con $nuevaCantidad unidades.');
  } else {
    print('Error al actualizar la cantidad');
  }
}
