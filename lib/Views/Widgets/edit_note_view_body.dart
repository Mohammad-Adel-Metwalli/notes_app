import 'package:flutter/cupertino.dart';
import 'package:notes_app/Views/Widgets/custom_app_bar.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget
{
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),

          const CustomAppBar(title: 'Edit Note'),

          const SizedBox(
            height: 40,
          ),

          CustomTextField(hintText: 'Title'),

          const SizedBox(
            height: 20,
          ),

          CustomTextField(hintText: 'Content', maxLines: 5)
        ],
      ),
    );
  }
}
