void main() async {

  print('Inicio del programa');

  httpGet('https://fernando-herrera.com/cursos').then( 
    (value){
    print( value );
    }).catchError( (err){
      print('Error: $err');
    } );

  print('Fin del programa');
}

Future<String> httpGet( String url ) async {

  await Future.delayed(Duration(seconds: 2));
  return 'Tenemos un valor de la petición';
}