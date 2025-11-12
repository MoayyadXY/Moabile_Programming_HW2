import 'pet.dart';

class Dog extends Pet {
  Dog(String name, int age) : super(name, age);

  Dog.named({required String name, required int age})
    : super.named(name: name, age: age);

  @override
  void makeSound() {
    playSound('assets/dogSound.mp3');
  }

  String move() => "Dog is running";
}
