import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget
{
  const ColorItem({Key? key, required this.isSelected, required this.color}) : super(key: key);
  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context)
  {
    return isSelected ? CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundColor: color,
        radius: 34,
      ),
    ) : CircleAvatar(
      backgroundColor: color,
      radius: 38,
    );
  }
}
