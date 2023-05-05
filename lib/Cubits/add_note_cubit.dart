import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Views/constants.dart';
import '../Views/Models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState>
{
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async
  {
    emit(AddNoteLoading());
    try
    {
      var boxNotes = Hive.box<NoteModel>(notesBox);
      await boxNotes.add(note);
      emit(AddNoteSuccess());
    }

    on Exception catch (e)
    {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
