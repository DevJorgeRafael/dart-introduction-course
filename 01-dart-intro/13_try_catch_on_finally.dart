void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print('Éxito: $value');
  } on Exception catch (err) {
    print('Tenemos una excepción: $err');
  } catch (err) {
    print('Oops!! algo terrible pasó: $err');
  } finally {
    print('fin del try y catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 2));

  throw Exception('No hay parámetros en la URL');

  // throw 'Error en la petición';
  // return 'Tenemos un valor de la petición';
}
