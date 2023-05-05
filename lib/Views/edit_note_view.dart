import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/edit_note_view_body.dart';
import 'Models/note_model.dart';

class EditNoteView extends StatelessWidget
{
  const EditNoteView({Key? key, required this.note}) : super(key: key);
  static String id = 'EditNoteView';
  final NoteModel note;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: EditNoteViewBody(note: note),
    );
  }
}
