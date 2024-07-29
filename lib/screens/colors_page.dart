import 'package:flutter/material.dart';
import 'package:language_app/components/item.dart';
import 'package:language_app/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Number> numbers = const [
    Number(
        sound: 'sounds/numbers/number_one_sound - Copy.wav',
        image: 'assets/images/colors/color_black.png',
        enName: 'black',
        jpName: 'Kuro'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/colors/color_brown.png',
        enName: 'brown',
        jpName: 'Chairo'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/colors/color_green.png',
        enName: 'green',
        jpName: 'Midori'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/colors/color_dusty_yellow.png',
        enName: 'dusty yellow',
        jpName: 'Dasutiierō'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/colors/color_gray.png',
        enName: 'gray',
        jpName: 'Gurē'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/colors/color_red.png',
        enName: 'red',
        jpName: 'Aka'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/colors/color_white.png',
        enName: 'white',
        jpName: 'Shiro'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/colors/yellow.png',
        enName: 'yellow',
        jpName: 'Kiiro'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.brown,
        title: const Text(
          'Colors',
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
            color: Colors.purple,
          );
        },
      ),
    );
  }
}
