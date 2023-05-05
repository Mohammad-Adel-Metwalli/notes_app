import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Models/note_model.dart';
import '../edit_note_view.dart';

class CustomNoteItem extends StatelessWidget
{
  const CustomNoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: ()
      {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16)
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(note.title, style: const TextStyle(fontSize: 28, color: Colors.black)),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: Text(note.subTitle, style: const TextStyle(fontSize: 14, color: Colors.black)),
              ),
              trailing: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.withOpacity(0.1)
                  ),
                  child: IconButton(onPressed: ()
                  {
                    note.delete();
                    AnimatedSnackBar.material(
                      'Note deleted successfully',
                      type: AnimatedSnackBarType.success,
                    ).show(context);
                  }
                  , icon: const Icon(FontAwesomeIcons.trash, color: Colors.red, size: 22,))
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(note.date, style: const TextStyle(color: Colors.black, fontSize: 14)),
            )
          ],
        ),
      ),
    );
  }
}
