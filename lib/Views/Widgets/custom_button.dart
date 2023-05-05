import 'package:flutter/material.dart';
import 'package:notes_app/Views/constants.dart';

class CustomButton extends StatelessWidget
{
  const CustomButton({Key? key, this.onTap, this.isLoading=false}) : super(key: key);
  final void Function()? onTap;
  final bool isLoading;

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

        child: Center(
          child: isLoading ? const SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(color: Colors.deepPurple)
          )
          :
            const Text('Add Note', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
