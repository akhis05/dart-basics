void main() {
  String text = "Ini adalah string dengan spasi";
  String textTanpaSpasi = text.replaceAll(' ', '');

  print('String awal: $text');
  print('String tanpa spasi: $textTanpaSpasi');
}
