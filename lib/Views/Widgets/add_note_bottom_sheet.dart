import 'package:flutter/material.dart';

class AddNoteBottomSheet extends StatelessWidget
{
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        color: Colors.white12
      ),
    );
  }
}
