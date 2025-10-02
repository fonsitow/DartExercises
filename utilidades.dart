void linea(int){
  print('─' * int);
}

void encabezado(String titulo, int){
  linea(int);
  print(titulo.toUpperCase());
  linea(int);
}