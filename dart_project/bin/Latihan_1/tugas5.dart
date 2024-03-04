import 'dart:io';

void main() {
  stdout.write("Masukkan panjang sisi persegi: ");
  String input = stdin.readLineSync()!;
  int sisi = int.parse(input);

  // Cetak persegi menggunakan nested loop
  for (int i = 0; i < sisi; i++) {
    for (int j = 0; j < sisi; j++) {
      stdout.write("* ");
    }
    stdout.write("\n");
  }
}
