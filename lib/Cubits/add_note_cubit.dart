import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Views/Models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState>
{
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note)
  {

  }
}
