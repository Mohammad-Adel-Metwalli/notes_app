import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Views/constants.dart';
import 'package:notes_app/Views/edit_note_view.dart';
import 'package:notes_app/Views/home_page.dart';

void main() async
{
  await Hive.initFlutter();
  await Hive.openBox(notesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget
{
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins'
      ),

      routes: {
        HomePage.id: (context) => const HomePage(),
        EditNoteView.id: (context) => const EditNoteView(),
      },

      initialRoute: HomePage.id,
    );
  }
}

