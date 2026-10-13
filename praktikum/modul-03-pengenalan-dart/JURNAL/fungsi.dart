void main() {
  List<List<int>> angka = [
    [5, 10, 15],
    [2, 4, 6, 8],
    [1, 4, 9, 16, 25],
    [3, 4, 5, 6, 7, 8]
  ];
  cariAngka(angka, 2);
  print('');
  cariAngka(angka, 11);
}
void cariAngka(List<List<int>> angka, int cari) {
  bool ketemu = false;
  print('Isi List:');
  for (int i = 0; i < angka.length; i++) {
    print(angka[i].join(' '));
  }
  print('\nBilangan yang dicari: $cari');
  for (int i = 0; i < angka.length; i++) {
    for (int j = 0; j < angka[i].length; j++) {
      if (angka[i][j] == cari) {
        print('$cari berada di:');
        print('baris ${i + 1} kolom ${j + 1}');
        ketemu = true;
        break;
      }
    }
    if (ketemu) {
      break;
    }
  }
  if (!ketemu) {
    print('$cari tidak ditemukan di dalam List.');
  }
}