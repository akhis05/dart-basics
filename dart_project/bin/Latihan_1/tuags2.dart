//Tulis program untuk mencetak Hello, saya "John Doe" dan Hello, saya "John Doe" dengan tanda kutip tunggal dan ganda. Untuk nama gunakan inputan dari pengguna.

import 'dart:io';

void main() {
  stdout.write("Masukkan nama Anda: ");
  String name = stdin.readLineSync()!;

  // Menggunakan tanda kutip ganda
  print('Hello, saya "$name"');

  // Menggunakan tanda kutip tunggal
  print('dan Hello, saya \'$name\'');
}
