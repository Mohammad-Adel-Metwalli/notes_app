import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomIcon extends StatelessWidget
{
  const CustomIcon({Key? key, required this.icon, this.onPressed}) : super(key: key);
  final IconData icon;
  final void Function()? onPressed;

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
        child: IconButton(
          onPressed: onPressed,

          icon: Icon(
            icon,
            size: 28,
            color: icon == FontAwesomeIcons.check ? Colors.green : Colors.white,
          ),
        ),
      ),
    );
  }
}
