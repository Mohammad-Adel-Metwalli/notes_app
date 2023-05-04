import 'package:flutter/material.dart';
import 'package:notes_app/Views/constants.dart';

class CustomButton extends StatelessWidget
{
  const CustomButton({Key? key, this.onTap}) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: priamryColor,
          borderRadius: BorderRadius.circular(15)
        ),

        child: const Center(
          child: Text('Add Note', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
