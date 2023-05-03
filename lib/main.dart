import 'package:flutter/material.dart';
import 'package:notes_app/Views/home_page.dart';

void main()
{
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
          brightness: Brightness.dark
      ),

      routes: {
        HomePage.id: (context) => const HomePage(),
      },

      initialRoute: HomePage.id,
    );
  }
}

