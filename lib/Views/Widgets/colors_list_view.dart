import 'package:flutter/cupertino.dart';
import 'package:notes_app/Views/Widgets/color_item.dart';

class ColorsListView extends StatelessWidget
{
  const ColorsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index)
      {
        return const ColorItem();
      }),
    );
  }
}
