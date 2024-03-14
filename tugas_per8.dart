import 'dart:io';

void main() {
  stdout.write('Masukkan nama Anda: ');
    String? nama = stdin.readLineSync();

  stdout.write('Masukkan jurusan Anda: ');
    String? jurusan = stdin.readLineSync();

  print('--------------------------------');
  print('Halo, $nama!');
  print('jurusan kamu  $jurusan! yaa!!');
}
