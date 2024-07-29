import 'package:flutter/material.dart';
import 'package:language_app/screens/home_page.dart';

void main() {
  runApp(const Toku_App());
}

class Toku_App extends StatelessWidget {
  const Toku_App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}
void _playSound() {
  print('Attempting to play sound...');
  var audioplayer;
  audioplayer.play('sounds/numbers/number_one_sound - Copy.wav').then((result) {
    print('Audio play result: $result');
  }).catchError((error) {
    print('Error playing audio: $error');
  });
}