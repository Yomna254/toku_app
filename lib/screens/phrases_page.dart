import 'package:flutter/material.dart';
import 'package:language_app/components/item.dart';
import 'package:language_app/models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Number> numbers = const [
    Number(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        image: 'assets/images/family_members/family_father.png',
        enName: 'dont forget to subscribe',
        jpName: 'Kōdoku suru koto o wasurenaide kudasai'),
    Number(
        sound: 'sounds/phrases/i_love_programming.wav',
        image: 'assets/images/family_members/family_mother.png',
        enName: 'i love programming',
        jpName: 'Watashi wa puroguramingu ga daisukidesu'),
    Number(
        sound: 'sounds/phrases/programming_is_easy.wav',
        image: 'assets/images/family_members/family_daughter.png',
        enName: 'programming is easy',
        jpName: 'Puroguramingu wa kantandesu'),
    Number(
        sound: 'sounds/phrases/what_is_your_name.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        enName: 'what is your name?',
        jpName: 'Anata no namae wa nandesuka'),
    Number(
        sound: 'sounds/phrases/i_love_anime.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        enName: 'i love anime',
        jpName: 'Watashi wa anime ga daisukidesu'),
    Number(
        sound: 'sounds/phrases/where_are_you_going.wav',
        image: 'assets/images/family_members/family_son.png',
        enName: 'where are you going?',
        jpName: 'Doko ni iku no'),
    Number(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        enName: 'how are you feeling?',
        jpName: 'Go kibun wa ikagadesu ka.'),
    Number(
        sound: 'sounds/phrases/are_you_coming.wav',
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
