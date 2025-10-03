/* 
! Crea una función que simule una consulta HTTP 
* (consulta a una API que tarda, por ejemplo, 2 segundos en responder). 
* Mientras espera el resultado, permite que el programa siga ejecutando otras operaciones 
! (por ejemplo, mostrar un contador de tiempo).
* Implementa el manejo de errores para responder a fallos de red simulados. 
*/
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print('📄 Título del post: ${data['title']}');
      print('📝 Contenido: ${data['body']}');
    } else {
      print('❌ Error: ${response.statusCode}');
    }
  } catch (e) {
    print('⚠️ Ocurrió un error: $e');
  } finally {
    print('🔚 Operación finalizada.');
  }
  }
