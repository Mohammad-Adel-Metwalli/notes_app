import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/notes_cubit.dart';
import 'package:notes_app/Views/Widgets/custom_app_bar.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';
import '../Models/note_model.dart';

class EditNoteViewBody extends StatefulWidget
{
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody>
{
  String? title, content;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),

          CustomAppBar(onPressed:()
          {
            widget.note.title = title ?? widget.note.title;
            widget.note.subTitle = content ?? widget.note.subTitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
            AnimatedSnackBar.material(
              'Note edited successfully',
              type: AnimatedSnackBarType.success,
            ).show(context);
          }, title: 'Edit Note'),

          const SizedBox(
            height: 40,
          ),

          CustomTextField(hintText: 'Title', onChanged: (value)
          {
            title = value;
          },),

          const SizedBox(
            height: 20,
          ),

          CustomTextField(hintText: 'Content', maxLines: 5, onChanged: (value)
          {
            content = value;
          })
        ],
      ),
    );
  }
}
