void main() {
  List<Map<String, dynamic>> product = [
    {
      "id": 1,
      "name": "Mobil Mainan",
      "stock": "20000",
      "pic": "Mint",
      "status": "1",
      "created_at": "05-10-2020 08:00:00",
      "update_at": "06-09-2024 07:00:00"
    },
    {
      "id": 2,
      "name": "Kursi",
      "stock": "10280",
      "pic": "Putri",
      "status": "1",
      "created_at": "04-24-2022 07:00:00",
      "update_at": "02-19-2025 05:00:00"
    },
    {
      "id": 3,
      "name": "Lemari",
      "stock": "963",
      "pic": "Purple",
      "status": "1",
      "created_at": "09-18-2021 14:00:00",
      "update_at": "06-20-2024 03:00:00"
    },
    {
      "id": 4,
      "name": "Pintu",
      "stock": "8145",
      "pic": "Joko",
      "status": "1",
      "created_at": "04/12/2024 01:00:00",
      "update_at": "03/20/2025 09:00:00"
    },
    {
      "id": 5,
      "name": "Cermin",
      "stock": "9001",
      "pic": "Lutfi",
      "status": "1",
      "created_at": "02-28-2022 14:00:00",
      "update_at": "01-15-2027 10:00:00"
    }
  ];

  print(product[0]["name"]);
  print(product[1]["name"]);
  print(product[2]["name"]);
  print(product[3]["name"]);
  print(product[4]["name"]);

  for (var data in product) {
    print(data["name"]);
  }

  for(var i = 0; i < product.length; i++) {
    print(product[i - 1]["name"]);
  }
}