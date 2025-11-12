import 'pet.dart';

class Cat extends Pet {
  Cat(String name, int age) : super(name, age);

  Cat.named({required String name, required int age})
    : super.named(name: name, age: age);

  @override
  void makeSound() {
    playSound('assets/catSound.mp3');
  }

  String move() => "Cat is walking silently";
}
