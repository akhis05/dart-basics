import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int angkaYangBenar =
      random.nextInt(10) + 1; // Menghasilkan angka acak antara 1 dan 10
  int tebakan;

  do {
    // Meminta pengguna untuk menebak angka
    stdout.write('Tebak angka antara 1 dan 10: ');
    String? input = stdin.readLineSync();

    // Memeriksa apakah input valid
    if (input != null) {
      tebakan = int.tryParse(input) ?? 0;

      // Memeriksa apakah tebakan benar
      if (tebakan == angkaYangBenar) {
        print('Selamat! Anda menebak angka yang benar.');
      } else {
        print('Tebakan Anda salah. Coba lagi.');
      }
    } else {
      print('Masukan tidak valid. Mohon masukkan angka.');
      tebakan = 0;
    }
  } while (tebakan != angkaYangBenar);
}
