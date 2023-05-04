import 'package:flutter/material.dart';
import 'package:notes_app/Views/constants.dart';

class CustomTextField extends StatelessWidget
{
  CustomTextField({super.key, required this.hintText, this.maxLines=1});
  String hintText;
  int maxLines;

  @override
  Widget build(BuildContext context)
  {
    return TextField(
      maxLines: maxLines,
      cursorColor: priamryColor,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: priamryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(priamryColor)
      )
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: color ?? Colors.white)
        );
  }
}
