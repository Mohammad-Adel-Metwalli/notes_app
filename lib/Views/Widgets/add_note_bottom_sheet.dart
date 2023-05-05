import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/add_note_cubit.dart';
import 'package:notes_app/Cubits/notes_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            color: Colors.white12
        ),

        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state)
          {
            if (state is AddNoteFailure)
            {

            }

            else if (state is AddNoteSuccess)
            {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state)
          {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: Padding(
                    padding: EdgeInsets.only(
                        right: 16,
                        left: 16,
                        bottom: MediaQuery.of(context).viewInsets.bottom
                    ),
                    child: const SingleChildScrollView(
                        child: AddNoteForm()
                    ),
                  ),
            );
          },
        ),
      ),
    );
  }
}
