import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/notes_cubit.dart';
import 'package:notes_app/Views/Widgets/custom_note_item.dart';
import '../Models/note_model.dart';

class CustomListView extends StatelessWidget
{
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state)
      {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: CustomNoteItem(),
                );
              }),
        );
      },
    );
  }
}
