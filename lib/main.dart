import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Views/constants.dart';
import 'package:notes_app/Views/edit_note_view.dart';
import 'package:notes_app/Views/notes_view.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'Views/Models/note_model.dart';

void main() async
{
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(notesBox);
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
        NotesView.id: (context) => const NotesView(),
        EditNoteView.id: (context) => const EditNoteView(),
      },

      initialRoute: NotesView.id,
    );
  }
}

