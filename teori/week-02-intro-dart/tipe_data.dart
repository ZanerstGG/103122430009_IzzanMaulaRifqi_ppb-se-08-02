void main(){
    // String, Integer, Double, Float, List, Map, Var, Dynamic
    // Tipe Primitive -> integer, bolean, float/string
    // Non primitive -> Sting, List, Map

  String nama = "Izzan";
  int umur = 19;
  bool isStudent = true;
  double height = 1.75;
  print("Nama saya $nama, umur saya $umur tahun, tinggi badan saya $height meter, dan apakah saya mahasiswa ${isStudent}");

  // var a = "Nilai saya adalah A";
  // print (a);
  // print("Tipe data dari variabel a adalah ${a.runtimeType}");

  // a = "Nilai saya adalah B";
  // print (a);
  // Jika pada saat program sudah di compile, maka tipe data dari variabel a tidak boleh diganti
  // Contoh adalah kta mengganti value dari string kita ganti value dengan integer

  dynamic b = "Nilai saya adalah B";
  print (b);
  print("Tipe data dari variabel b adalah ${b.runtimeType}");
  b = 12;
  print (b);
  print("tipe data dari variabel B adalah ${b.runtimeType}");

  // Collection -> List -> Array
  // List secara Index dimulai dari 0, 1, 2, ... n
  List<String> names = ["Yuki Sorimachi", "Purple Star", "Kujou Shion"];
  print(names[2]);
  names.add("Hoshino");
  print(names[3]);
  print(names.length);
  List<dynamic> numbers = ["1", 2, -3 , 4.5];
  print(numbers);

  // Collection -> Map -> key and value
  Map<dynamic, dynamic> biodata = {
    "nama": "izzan",
    "kelas": "O8-02",
    "jurusan": "Teknik Informatika",
    "isMahasiswa": true,
    1: "satu",
  };

  // Javascript
  // const data = {
  //   "nama": "izzan",
  //   "kelas": "O8-02",
  //   "jurusan": "Teknik Informatika",
  //   "isMahasiswa": true,
  // };

  print(biodata);
}