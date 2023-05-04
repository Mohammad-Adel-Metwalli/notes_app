import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget
{
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        color: Colors.white12
      ),

      child: Column(
        children: [
          const SizedBox(height: 32),

          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomTextField(hintText: 'Title', maxLines: 1),
          ),

          const SizedBox(height: 1),

          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomTextField(hintText: 'Content', maxLines: 5),
          ),
        ],
      ),
    );
  }
}
