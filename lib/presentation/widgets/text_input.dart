import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sprint/presentation/colors/color.dart';

class TextInput extends StatefulWidget {
  const TextInput(
      {super.key,
      required this.controller,
      required this.isPassword,
      required this.hint});

  final TextEditingController controller;
  final bool isPassword;
  final String hint;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool _isRevealed = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPassword ? _isRevealed : false,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isRevealed = !_isRevealed;
                  });
                },
                icon: SvgPicture.asset('assets/Eye.svg'),
              )
            : null,
        hintText: widget.hint,
        hintStyle: TextStyle(color: Mycolors.textColor),
        filled: true,
        fillColor: Mycolors.backColor,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
