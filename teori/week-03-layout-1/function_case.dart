void sayHello(String name) {
  print("Selamat datang di kelas Programming Mobile $name");
}

double sum(dynamic a, dynamic b){
  return a + b;
}

void main(){
  sayHello("08-02");
  print(sum(10, 20.5));

  String name, alamat, email, nohp, kelas, nim;
  int id;
  String? asalSekolah = null;

  print(asalSekolah ?? "Tidak Ada Asal Sekolah");
}