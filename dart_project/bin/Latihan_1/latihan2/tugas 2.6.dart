import 'dart:io';

void main() {
  // Meminta pengguna untuk memasukkan tahun
  stdout.write('Masukkan tahun: ');
  int? tahun = int.tryParse(stdin.readLineSync() ?? '');

  // Memeriksa apakah tahun valid
  if (tahun != null) {
    // Memeriksa apakah tahun kabisat atau tidak
    if ((tahun % 4 == 0 && tahun % 100 != 0) || tahun % 400 == 0) {
      print('$tahun adalah tahun kabisat.');
    } else {
      print('$tahun bukan tahun kabisat.');
    }
  } else {
    print('Masukan tidak valid. Mohon masukkan tahun dengan angka.');
  }
}
