void main() {
  hitungKPK(12, 8);
  hitungKPK(15, 20);
}
void hitungKPK(int a, int b) {
  int angka = a;
  while (angka % b != 0) {
    angka += a;
  }
  print('Bilangan 1: $a');
  print('Bilangan 2: $b');
  print('KPK $a dan $b = $angka');
}