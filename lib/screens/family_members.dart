import 'package:flutter/material.dart';
import 'package:language_app/components/item.dart';
import 'package:language_app/models/number.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<Number> numbers = const [
    Number(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        enName: 'father',
        jpName: 'Chichioya'),
    Number(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        enName: 'mother',
        jpName: 'Hahaoya'),
    Number(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        enName: 'daughter',
        jpName: 'Musume'),
    Number(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        enName: 'son',
        jpName: 'Musuko'),
    Number(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        enName: 'grand father',
        jpName: 'Sofu'),
    Number(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        enName: 'grand mother',
        jpName: 'Sobo'),
    Number(
        sound: 'sounds/family_members/older brother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        enName: 'older brother',
        jpName: 'Ani'),
    Number(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        enName: 'older sister',
        jpName: 'Ane'),
    Number(
        sound: 'sounds/family_members/younger brother.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        enName: 'younger brother',
        jpName: 'Otōto'),
    Number(
        sound: 'sounds/younger sister',
        image: 'assets/images/family_members/family_younger_sister.png',
        enName: 'younger sister',
        jpName: 'Imōto'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.brown,
        title: const Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, num) {
          return Item(
            number: numbers[num],
            color: const Color(0xff458B00),
          );
        },
      ),
    );
  }
}
