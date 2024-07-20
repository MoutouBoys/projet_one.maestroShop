import 'package:flutter/material.dart';
import 'package:maestroshop/utils/colors_pers.dart';
import 'package:maestroshop/utils/components/input_container.dart';

class RoundedPasswordInput extends StatelessWidget {
  const RoundedPasswordInput({Key? key, required this.hint}) : super(key: key);

  final String hint;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
      cursorColor: ColorsPers.colorViolet,
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.lock, color: ColorsPers.colorWhite),
          hintText: hint,
          border: InputBorder.none),
    ));
  }
}
