import 'package:flutter/material.dart';

class category_item extends StatelessWidget {
  String? text;
  Color? color;
  Function()? onTap;
  category_item({super.key, this.text, this.color, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        color: color,
        height: 60,
        width: double.infinity,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
