import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../Views/Models/note_model.dart';
import '../Views/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState>
{
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;

  fetchAllNotes()
  {
    var boxNotes = Hive.box<NoteModel>(notesBox);
    notes = boxNotes.values.toList();
    emit(NotesSuccess());
  }
}
