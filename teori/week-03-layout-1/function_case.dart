void sayHello(String name) {
  print('Selamat datang di kelas Programming Mobile $name');
}

num sum(num a, num b) {
  return a + b;
}

void main() {
  const className = '08-02';
  String? asalSekolah;

  sayHello(className);
  print(sum(10, 20.5));
  print(asalSekolah ?? 'Tidak Ada Asal Sekolah');
}
