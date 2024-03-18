import 'dart:io';

void main() {
  // Meminta pengguna untuk memasukkan angka
  stdout.write('Masukkan angka: ');
  int? angka = int.tryParse(stdin.readLineSync() ?? '');

  // Memeriksa apakah angka valid
  if (angka != null) {
    int faktorial = hitungFaktorial(angka);
    print('Faktorial dari $angka adalah $faktorial');
  } else {
    print(
        'Masukan tidak valid. Mohon masukkan angka dengan format yang benar.');
  }
}

int hitungFaktorial(int angka) {
  int hasil = 1;
  int i = 1;

  // Menghitung faktorial dengan perulangan while
  while (i <= angka) {
    hasil *= i;
    i++;
  }

  return hasil;
}
