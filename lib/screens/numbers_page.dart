import 'package:flutter/material.dart';
import 'package:language_app/components/item.dart';
import 'package:language_app/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Number> numbers = const [
    Number(
        sound: 'sounds/numbers/number_one_sound - Copy.wav',
        image: 'assets/images/numbers/number_one.png',
        enName: 'one',
        jpName: 'ichi'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        enName: 'two',
        jpName: 'ni'),
    Number(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        enName: 'three',
        jpName: 'san'),
    Number(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        enName: 'four',
        jpName: 'yon'),
    Number(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        enName: 'five',
        jpName: 'go'),
    Number(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        enName: 'six',
        jpName: 'roku'),
    Number(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        enName: 'seven',
        jpName: 'nana'),
    Number(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        enName: 'eight',
        jpName: 'hachi'),
    Number(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        enName: 'nine',
        jpName: 'kyū'),
    Number(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        enName: 'ten',
        jpName: 'jū'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.brown,
        title: const Text(
          'Numbers',
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
            color: Colors.orange,
          );
        },
      ),
    );
  }
}
