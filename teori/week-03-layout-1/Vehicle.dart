abstract class BisaDiservis {
  void servis();
}

mixin GPS {
  void tampilkanLokasi() {
    print("Lokasi GPS: -7.4797, 109.5000");
  }
}

extension FormatKecepatan on int {
  String get kmPerJam => "$this km/jam";
}

class Kendaraan {
  String nama;
  int kecepatan;

  Kendaraan(this.nama, this.kecepatan);

  void bergerak() {
    print("$nama bergerak dengan kecepatan ${kecepatan.kmPerJam}");
  }
}

class Mobil extends Kendaraan with GPS implements BisaDiservis {
  String nomorPolisi;
  String? namaPemilik;
  int? tahunProduksi;
  late String nomorMesin;

  Mobil({required String nama, required this.nomorPolisi, this.namaPemilik, this.tahunProduksi}) : super(nama, 0);

  void tampilkanInformasi() {
    print("--- Informasi Mobil ---");
    print("Nama: $nama");
    print("Nomor Polisi: $nomorPolisi");
    print("Pemilik: ${namaPemilik ?? "Tidak diketahui"}");
    print("Tahun Produksi: ${tahunProduksi ?? "-"}");
    print("Nomor Mesin: $nomorMesin");
  }

  void registrasiMesin(String nomor) {
    nomorMesin = nomor;
    print("Mesin $nama sudah diregistrasi dengan nomor $nomorMesin");
  }

  void daftarKendaraan({required String nama, required String nomorPolisi, String? pemilik, String warna = "Hitam", int kecepatan = 0}) {
    print("--- Pendaftaran Kendaraan ---");
    print("Nama: $nama");
    print("Nomor Polisi: $nomorPolisi");
    print("Pemilik: ${pemilik ?? "Tidak diketahui"}");
    print("Warna: $warna");
    print("Kecepatan: ${kecepatan.kmPerJam}");
  }

  @override
  void servis() {
    print("$nama dengan plat $nomorPolisi sedang diservis");
  }
}

void tampilkanMobil(String nama, int kecepatan) {
  print("Mobil $nama kecepatannya ${kecepatan.kmPerJam}");
}

void tampilkanMobil2(String nama, [String? warna]) {
  print("Mobil $nama warnanya ${warna ?? "belum ditentukan"}");
}

void dataMobil({required String nama, String warna = "Hitam"}) {
  print("Data mobil: $nama, warna $warna");
}

void main() {
  Mobil mobil1 = Mobil(nama: "Avanza", nomorPolisi: "R 1234 AB", namaPemilik: "Budi", tahunProduksi: 2022);
  mobil1.registrasiMesin("MSN-987654");
  mobil1.tampilkanInformasi();
  
  mobil1.bergerak();
  mobil1.tampilkanLokasi();
  mobil1.servis();
  
  print(80.kmPerJam);
  
  Mobil mobil2 = Mobil(nama: "Brio", nomorPolisi: "AB 5678 CD");
  mobil2.registrasiMesin("MSN-111222");
  mobil2.tampilkanInformasi();
  
  mobil1.daftarKendaraan(nama: "Xenia", nomorPolisi: "B 9999 XY", pemilik: "Siti");

  print("");
  tampilkanMobil("Avanza", 60);
  tampilkanMobil2("Avanza");
  tampilkanMobil2("Avanza", "Putih");
  dataMobil(nama: "Avanza");
  dataMobil(nama: "Avanza", warna: "Merah");
}