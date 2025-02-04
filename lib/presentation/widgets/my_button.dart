import 'package:flutter/material.dart';
import 'package:sprint/presentation/colors/color.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.title,
      required this.color,
      required this.onTap});

  final String title;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'New Peninim MT',
                      color: Mycolors.whiteColor),
                  textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
