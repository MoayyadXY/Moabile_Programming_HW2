import 'friendly.dart';
import 'package:audioplayers/audioplayers.dart';

abstract class Pet implements Friendly {
  static int petCount = 0;

  String name;
  int age;

  Pet(this.name, this.age) {
    petCount++;
  }

  Pet.named({required this.name, required this.age}) {
    petCount++;
  }

  void makeSound(); // abstract

  @override
  void showAffection() {
    print("$name loves you!");
  }

  final AudioPlayer _audioPlayer = AudioPlayer();

  void playSound(String soundPath) {
    _audioPlayer.play(UrlSource(soundPath));
  }
}
