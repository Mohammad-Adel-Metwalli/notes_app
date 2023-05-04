import 'package:flutter/cupertino.dart';
import 'package:notes_app/Views/Widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget
{
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 60,
          ),

          CustomAppBar(title: 'Edit Note'),
        ],
      ),
    );
  }
}
