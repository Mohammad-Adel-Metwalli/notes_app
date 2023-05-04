import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Views/Widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget
{
  const CustomAppBar({super.key, required this.title});
  final String? title;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Text(title!, style: const TextStyle(fontSize: 28)),

        const Spacer(),

        CustomIcon(icon: title! == 'Notes'? Icons.search_sharp : FontAwesomeIcons.check)
      ],
    );
  }
}