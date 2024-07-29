import 'package:flutter/material.dart';
import 'package:language_app/components/category_item.dart';
import 'package:language_app/screens/colors_page.dart';
import 'package:language_app/screens/family_members.dart';
import 'package:language_app/screens/numbers_page.dart';
import 'package:language_app/screens/phrases_page.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 234, 224),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          category_item(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            color: Colors.orange,
            text: 'Numbers',
          ),
          category_item(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembers();
              }));
            },
            color: const Color(0xff458B00),
            text: 'Family Members',
          ),
          category_item(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
            color: Colors.purple,
            text: 'Colors',
          ),
          category_item(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
            color: Colors.cyan,
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}
