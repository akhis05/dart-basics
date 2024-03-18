import 'dart:io';

void main() {
  // Meminta pengguna untuk memasukkan angka
  stdout.write('Masukkan angka: ');
  String? input = stdin.readLineSync();

  // Memeriksa apakah input tidak kosong
  if (input != null && input.isNotEmpty) {
    double? angka = double.tryParse(input);

    // Memeriksa apakah angka valid
    if (angka != null) {
      // Menggunakan switch-case untuk menentukan apakah angka positif, negatif, atau nol
      switch (angka.sign) {
        case -1:
          print('$angka adalah angka negatif.');
          break;
        case 0:
          print('$angka adalah angka nol.');
          break;
        case 1:
          print('$angka adalah angka positif.');
          break;
      }
    } else {
      print(
          'Masukan tidak valid. Mohon masukkan angka dengan format yang benar.');
    }
  } else {
    print('Masukan tidak boleh kosong. Mohon masukkan angka.');
  }
}
