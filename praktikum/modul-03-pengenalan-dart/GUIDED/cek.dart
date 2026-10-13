// import 'dart:io';

void main() {
  // dynamic data;

  // data = "Yuki";
  // data = 15;
  // data = [];

  // int nilai = 15;

  // if(nilai > 5)
  //   print ("Nilai cukup bagus");
  // else if (nilai == 5)
  //   print ("nilai pas-pasan");
  // else
  //   print ("nilai kurang bagus");

  // nilai > 5 ? print("Nilai cukup bagus") : print("nilai kurang bagus");

  // int suhu = int.parse(stdin.readLineSync()!);

  // suhu > 27 
  //   ? print("Panas") 
  //   : suhu <= 27 && suhu >= 20 
  //   ? print("Hangat") 
  //   : print("Dingin");

  // List matkul = ["PPB", "Web", "Alpro"];
  //   // for (String namaMatkul in matkul) {
  //   //   print(namaMatkul);
  //   // }

  //   matkul.forEach((data) => print(data));

  // var mahasiswa = [];

  // mahasiswa.add("Yuki");
  // mahasiswa.add("Linko");
  // mahasiswa.add("Iroi");
  // print(mahasiswa);

    print(tambah(15, 10));
    print(kurang(a: 15, b: 10));
    print(kali(15, 10));
}
  int tambah(int a, int b) {
    return a + b;
  }
  int kurang({int a = 0, int b = 0}) {
    return a - b;
  }
  int kali(int a, int b) => a * b;
