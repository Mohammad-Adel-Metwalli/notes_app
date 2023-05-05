import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/add_note_cubit.dart';
import 'package:notes_app/Views/Models/note_model.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,

      child: Column(
        children: [
          const SizedBox(height: 32),

          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomTextField(
                onSaved: (value) {
                  title = value;
                },
                hintText: 'Title',
                maxLines: 1
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomTextField(
                onSaved: (value) {
                  subTitle = value;
                },
                hintText: 'Content',
                maxLines: 5
            ),
          ),

          const SizedBox(height: 70),

          Padding(
            padding: const EdgeInsets.all(16),
            child: BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteLoading? true: false,
                  onTap: ()
                  {
                    if (formKey.currentState!.validate())
                    {
                      formKey.currentState!.save();
                      var noteModel = NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          date: DateTime
                          .now().toString(),
                          color: Colors.white.value
                      );

                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);

                      AnimatedSnackBar.material(
                        'Note added successfully',
                        type: AnimatedSnackBarType.success,
                      ).show(context);
                    }

                    else
                    {
                      autovalidateMode = AutovalidateMode.always;
                      setState(()
                      {

                      });
                      AnimatedSnackBar.material(
                        'Something went wrong',
                        type: AnimatedSnackBarType.error,
                      ).show(context);
                    }
                  },
                );
              },
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}