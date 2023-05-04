import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomIcon extends StatelessWidget
{
  const CustomIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(12)
      ),

      child: Center(
        child: Icon(
          icon,
          size: 28,
          color: icon == FontAwesomeIcons.check ? Colors.green : Colors.white,
        ),
      ),
    );
  }
}
