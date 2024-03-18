import 'dart:io';

void main() {
  // Meminta pengguna untuk memasukkan hari dalam seminggu
  stdout.write('Masukkan hari dalam seminggu: ');
  String? hari = stdin.readLineSync();

  // Memeriksa input hari
  if (hari != null) {
    // Menggunakan switch-case untuk menentukan apakah itu hari kerja atau akhir pekan
    switch (hari.toLowerCase()) {
      case 'senin':
      case 'selasa':
      case 'rabu':
      case 'kamis':
      case 'jumat':
        print('$hari adalah hari kerja.');
        break;
      case 'sabtu':
      case 'minggu':
        print('$hari adalah akhir pekan.');
        break;
      default:
        print('Input tidak valid. Masukkan nama hari dalam bahasa Indonesia.');
        break;
    }
  } else {
    print('Masukan tidak valid. Mohon masukkan hari dalam seminggu.');
  }
}
