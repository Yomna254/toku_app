import 'package:flutter/material.dart';
import 'package:language_app/components/item.dart';
import 'package:language_app/models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Number> numbers = const [
    Number(
        sound: 'sounds/numbers/number_one_sound - Copy.wav',
        image: 'assets/images/family_members/family_father.png',
        enName: 'dont forget to subscribe',
        jpName: 'Kōdoku suru koto o wasurenaide kudasai'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/family_members/family_mother.png',
        enName: 'i love programming',
        jpName: 'Watashi wa puroguramingu ga daisukidesu'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/family_members/family_daughter.png',
        enName: 'programming is easy',
        jpName: 'Puroguramingu wa kantandesu'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/family_members/family_grandfather.png',
        enName: 'what is your name?',
        jpName: 'Anata no namae wa nandesuka'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/family_members/family_grandmother.png',
        enName: 'i love anime',
        jpName: 'Watashi wa anime ga daisukidesu'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/family_members/family_son.png',
        enName: 'where are you going?',
        jpName: 'Doko ni iku no'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/family_members/family_older_brother.png',
        enName: 'how are you feeling?',
        jpName: 'Go kibun wa ikagadesu ka.'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/family_members/family_older_sister.png',
        enName: 'are you coming?',
        jpName: 'Kimasu ka'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.brown,
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, num) {
          return PhrasesItem(
            color: Colors.cyan,
            number: numbers[num],
          );
        },
      ),
    );
  }
}
