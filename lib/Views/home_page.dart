import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/add_note_bottom_sheet.dart';
import 'Widgets/notes_view_body.dart';

class HomePage extends StatelessWidget
{
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: ()
          {
            showModalBottomSheet(context: context, builder: (context)
            {
              return const AddNoteBottomSheet();
            });
          },
          child: const Icon(Icons.note_add, color: Colors.green),
      ),
    );
  }
}


