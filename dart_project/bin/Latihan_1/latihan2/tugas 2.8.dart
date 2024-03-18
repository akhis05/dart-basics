import 'dart:io';

void main() {
  // Meminta pengguna untuk memasukkan angka
  stdout.write('Masukkan angka: ');
  String? input = stdin.readLineSync();

  // Memeriksa apakah input tidak kosong dan merupakan angka
  if (input != null && input.isNotEmpty && isNumeric(input)) {
    int angka = int.parse(input);
    int jumlahDigit = hitungJumlahDigit(angka);
    print('Jumlah digit dari $angka adalah $jumlahDigit');
  } else {
    print(
        'Masukan tidak valid. Mohon masukkan angka dengan format yang benar.');
  }
}

bool isNumeric(String input) {
  if (input == null) {
    return false;
  }
  return double.tryParse(input) != null;
}

int hitungJumlahDigit(int angka) {
  int jumlahDigit = 0;

  // Menghitung jumlah digit dengan perulangan while
  while (angka != 0) {
    jumlahDigit++;
    angka ~/= 10;
  }

  return jumlahDigit;
}
