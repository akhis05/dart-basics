import 'dart:io';

void main() {
  // Meminta pengguna untuk memasukkan usia
  stdout.write('Masukkan usia Anda: ');
  int? usia = int.tryParse(stdin.readLineSync() ?? '');

  // Memeriksa apakah usia valid
  if (usia != null) {
    // Memeriksa apakah usia memenuhi syarat untuk memilih
    if (usia >= 17) {
      print('Anda memenuhi syarat untuk memilih.');
    } else {
      print(
          'Maaf, Anda belum mencapai usia yang memenuhi syarat untuk memilih.');
    }
  } else {
    print('Masukan tidak valid. Mohon masukkan usia dengan angka.');
  }
}
