import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_app/models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number, required this.color});
  final Number number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 239, 234, 224),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.setSourceAsset(number.sound);
              },
              icon: const Icon(
                color: Colors.white,
                Icons.play_arrow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.number, required this.color});
  final Number number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.setSourceAsset(number.sound);
              },
              icon: const Icon(
                color: Colors.white,
                Icons.play_arrow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
