import 'dart:io';

void main() {
  stdout.write('Masukkan suhu yang akan diubah ke C: ');
  num suhu = num.parse(stdin.readLineSync()!);
  
  stdout.write('Masukkan satuan suhu yang anda inginkan (F untuk Fahrenheit, R untuk Reamur, K untuk Kelvin): ');
  String satuan = stdin.readLineSync()!;
  
  switch (satuan.toUpperCase()) {
    case 'F':
      num celsius = fahrenheitKeCelsius(suhu);
      print('$suhu derajat Fahrenheit = $celsius Celsius');

    case 'R':
      num celsius = reamurKeCelsius(suhu);
      print('$suhu derajat Reamur = $celsius Celsius');

    case 'K':
      num celsius = kelvinKeCelsius(suhu);
      print('$suhu derajat Kelvin = $celsius Celsius');

    default:
      print('Satuan suhu tidak valid');
  }
}

num fahrenheitKeCelsius(num fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

num reamurKeCelsius(num reamur) {
  return reamur * 5 / 4;
}

num kelvinKeCelsius(num kelvin) {
  return kelvin - 273.15;
}
