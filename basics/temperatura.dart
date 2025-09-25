import 'dart:io';

void main() {
  double temperature = double.parse(stdin.readLineSync()!);

  if (temperature < 35 ) {
    print('tienes hipotermia');
  } else if (temperature <= 37) {
    print('estas normal');
  } else if (temperature <= 37.5) {
    print('tienes febrícula');
  } else if (temperature < 40) {
    print('tienes fiebre');
  } else {
    print('puedes tener hipetermia');
  }
}
