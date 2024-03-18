import 'dart:io';

void main() {

  stdout.write('Masukkan suhu yang akan diubah ke C: ');
  double suhu = double.parse(stdin.readLineSync()!);
  
  stdout.write('Masukkan satuan suhu yang anda inginkan (F untuk Fahrenheit, R untuk Reamur, K untuk Kelvin): ');
  String satuan = stdin.readLineSync()!;
  
  switch (satuan.toUpperCase()) {
    case 'F':
      double celsius = fahrenheitKeCelsius(suhu);
      print('$suhu Fahrenheit = $celsius Celsius');

    case 'R':
      double celsius = reamurKeCelsius(suhu);
      print('$suhu Reamur = $celsius Celsius');

    case 'K':
      double celsius = kelvinKeCelsius(suhu);
      print('$suhu Kelvin = $celsius Celsius');

    default:
      print('Satuan suhu tidak valid');
  }
}

double fahrenheitKeCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

double reamurKeCelsius(double reamur) {
  return reamur * 5 / 4;
}

double kelvinKeCelsius(double kelvin) {
  return kelvin - 273.15;
}
