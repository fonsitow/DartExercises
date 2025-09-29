/* - Agenda inteligente
Crea una lista de eventos (List<Map<String, dynamic>>) 
y ordena por fecha. Añade una función que sugiera el evento “más cercano” en tiempo.
 */

void eventoCercano(List<Map<String, dynamic>> eventos) {
  DateTime ahora = DateTime.now();

  for (var evento in eventos) {
    if (evento['fecha'].isAfter(ahora) ||
        evento['fecha'].isAtSameMomentAs(ahora)) {
      print('tu proximo evento es ${evento['nombre']} el ${evento['fecha']}');
      return;
    }
  }
}

void main() {
  List<Map<String, dynamic>> agenda = [
    {'nombre': 'Cumpleaños Marifer', 'fecha': DateTime(2002, 9, 01)},
    {'nombre': 'Cumpleaños Mama', 'fecha': DateTime(1968, 10, 16)},
    {'nombre': 'Cumpleaños Melany', 'fecha': DateTime(2007, 12, 13)},
    {'nombre': 'Cumpleaños', 'fecha': DateTime(2007, 11, 02)},
  ];

  agenda.sort((a, b) => a["fecha"].compareTo(b["fecha"]));

  eventoCercano(agenda);

  print('Agenda:');
  DateTime ahora = DateTime.now();
  print(ahora);
  agenda.forEach((evento) {
    print(' - ${evento["nombre"]} el ${evento["fecha"]}');
  });
}
