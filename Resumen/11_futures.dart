void main() {
  
  print('Inicio del programa');
  
  // el value es el producto de la peticion, el resultado
  httpGet('https://fernando-herrera.com/cursos')
    .then( 
      (value){
        print( value );
      })
    .catchError( (err) {
    print('Error: $err');
  });
  
  print('Fin del programa');
}

// Resultado de una operacion asyncronica, por ejemplo una consulta http
Future<String> httpGet( String url ){
  

  return Future.delayed( const Duration(seconds: 1), () {
    
    throw 'Error en la petición http';
    
//     return 'Respuesta de la petición http';
    
  });
  
}