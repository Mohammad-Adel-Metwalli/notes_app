import 'package:flutter/material.dart';
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
          onPressed: (){},
          child: const Icon(Icons.note_add, color: Colors.green),
      ),
    );
  }
}


