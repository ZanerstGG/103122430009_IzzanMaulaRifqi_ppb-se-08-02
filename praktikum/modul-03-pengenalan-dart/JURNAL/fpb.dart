void main() {
  hitungFPB(48, 18);
  hitungFPB(27, 18);
}
void hitungFPB(int a, int b) {
  int angka1 = a;
  int angka2 = b;
  while (angka2 != 0) {
    int sisa = angka1 % angka2;
    angka1 = angka2;
    angka2 = sisa;
  }
  print('Bilangan 1: $a');
  print('Bilangan 2: $b');
  print('FPB $a dan $b = $angka1');
}