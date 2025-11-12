import 'package:flutter/material.dart';
import 'models/dog.dart';
import 'models/cat.dart';
import 'models/bird.dart';
import 'models/pet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Pet Manager',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      home: PetHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PetHomePage extends StatelessWidget {
  final List<Pet> pets = [
    Dog.named(name: "Buddy", age: 3),
    Cat.named(name: "Mia", age: 2),
    Bird.named(name: "Tweety", age: 1),
  ];

  PetHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Smart Pet Manager")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: pets.length,
              itemBuilder: (context, index) {
                final pet = pets[index];
                IconData petIcon;
                if (pet is Dog) {
                  petIcon = Icons.pets;
                } else if (pet is Cat) {
                  petIcon = Icons.pets;
                } else if (pet is Bird) {
                  petIcon = Icons.pets;
                } else {
                  petIcon = Icons.help;
                }

                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(petIcon, color: Colors.blue),
                    title: Text("${pet.runtimeType}: ${pet.name}"),
                    subtitle: Text("Age: ${pet.age}"),
                    trailing: IconButton(
                      icon: const Icon(Icons.volume_up),
                      onPressed: () => pet.makeSound(),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Total pets: ${Pet.petCount}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
