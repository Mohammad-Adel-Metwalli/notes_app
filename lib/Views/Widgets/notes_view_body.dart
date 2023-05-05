import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/notes_cubit.dart';
import 'package:notes_app/Views/Widgets/custom_list_view.dart';
import 'custom_app_bar.dart';

class NotesViewBody extends StatefulWidget
{
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState()
  {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 60,),

          CustomAppBar(title: 'Notes'),

          Expanded(
              child: CustomListView()
          )
        ],
      ),
    );
  }
}

