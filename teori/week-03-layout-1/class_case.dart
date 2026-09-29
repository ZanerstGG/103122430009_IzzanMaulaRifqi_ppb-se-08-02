class Animal {
  String sex;
  int age;

  Animal(this.sex, this.age);

  void info(){
    print("Jenis Kelamin adalah $sex");
    print("Umur adalah $age");
  }
}

void main() {
  Animal animal = Animal("Male", 2);
  animal.info();
}
