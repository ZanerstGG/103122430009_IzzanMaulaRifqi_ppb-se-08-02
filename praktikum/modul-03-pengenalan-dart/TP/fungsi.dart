void main() {
  int A = 3;
  int B = 2;

  List<List<int>> matriks = [
    [8, 4],
    [5, 6],
    [9, 4]
  ];

  print('Matriks A x B');
  print('A: $A');
  print('B: $B');
  print('Isi matriks:');
  tampilkanMatriks(matriks);
  print('\nHasil transpose:');
  tampilkanMatriks(transpose(matriks));
}
void tampilkanMatriks(List<List<int>> matriks) {
  for (int i = 0; i < matriks.length; i++) {
    print(matriks[i].join(' '));
  }
}

List<List<int>> transpose(List<List<int>> matriks) {
  List<List<int>> hasil = [];
  for (int j = 0; j < matriks[0].length; j++) {
    List<int> baris = [];
    for (int i = 0; i < matriks.length; i++) {
      baris.add(matriks[i][j]);
    }
    hasil.add(baris);
  }
  return hasil;
}
