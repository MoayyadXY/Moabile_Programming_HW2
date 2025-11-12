import 'pet.dart';
import 'flyable.dart';

class Bird extends Pet with Flyable {
  Bird(String name, int age) : super(name, age);

  Bird.named({required String name, required int age})
    : super.named(name: name, age: age);

  @override
  void makeSound() {
    playSound('assets/birdSound.mp3');
  }

  String move() => fly(); // using mixin
}
