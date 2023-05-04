import 'package:flutter/cupertino.dart';
import 'package:notes_app/Views/Widgets/custom_list_view.dart';
import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget
{
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50,),

          CustomAppBar(),

          SizedBox(height: 15,),

          Expanded(
              child: CustomListView()
          )
        ],
      ),
    );
  }
}

