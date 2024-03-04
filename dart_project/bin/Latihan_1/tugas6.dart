import 'dart:io';

void main() {
  stdout.write("Masukkan nama depan Anda: ");
  String firstName = stdin.readLineSync()!;

  stdout.write("Masukkan nama belakang Anda: ");
  String lastName = stdin.readLineSync()!;

  // Menggabungkan nama depan dan nama belakang
  String fullName = '$firstName $lastName';

  // Cetak nama lengkap
  print('Nama lengkap Anda adalah: $fullName');
}
