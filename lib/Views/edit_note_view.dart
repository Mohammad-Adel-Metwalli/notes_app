import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget
{
  const EditNoteView({Key? key}) : super(key: key);
  static String id = 'EditNoteView';
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      backgroundColor: Colors.white12,
      body: EditNoteViewBody(),
    );
  }
}
