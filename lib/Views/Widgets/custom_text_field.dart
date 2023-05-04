import 'package:flutter/material.dart';
import 'package:notes_app/Views/constants.dart';

class CustomTextField extends StatelessWidget
{
  CustomTextField({super.key, required this.hintText, this.maxLines=1, this.onSaved});
  String hintText;
  int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      validator: (value)
      {
        if(value?.isEmpty ?? true)
        {
          return 'Field is required';
        }

        else
        {
          return null;
        }
      },
      onSaved: onSaved,
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
