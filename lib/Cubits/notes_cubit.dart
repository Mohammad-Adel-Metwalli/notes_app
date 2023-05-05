import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../Views/Models/note_model.dart';
import '../Views/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState>
{
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async
  {
    try
    {
      var boxNotes = Hive.box<NoteModel>(notesBox);
      emit(NotesSuccess(boxNotes.values.toList()));
    }

    on Exception catch (e)
    {
      emit(NotesFailure(e.toString()));
    }
  }
}
