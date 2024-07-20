import 'package:flutter/material.dart';
import 'package:maestroshop/utils/colors_pers.dart';
import 'package:maestroshop/utils/components/input_container.dart';

class RoundedInput extends StatelessWidget {
  const RoundedInput({Key? key, required this.icon, required this.hint})
      : super(key: key);

  final IconData icon;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
      cursorColor: ColorsPers.colorViolet,
      decoration: InputDecoration(
          icon: Icon(icon, color: ColorsPers.colorWhite),
          hintText: hint,
          border: InputBorder.none),
    ));
  }
}
