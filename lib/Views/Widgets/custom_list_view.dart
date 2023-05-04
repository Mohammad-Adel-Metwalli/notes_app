import 'package:flutter/cupertino.dart';
import 'package:notes_app/Views/Widgets/custom_note_item.dart';

class CustomListView extends StatelessWidget
{
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index)
      {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: CustomNoteItem(title: 'Flutter Tips', subTitle: 'Build Your Career With Mohammad Adel'),
        );
      }),
    );
  }
}
