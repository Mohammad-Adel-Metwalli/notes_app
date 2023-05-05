import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/add_note_cubit.dart';
import 'package:notes_app/Views/Widgets/color_item.dart';

import '../constants.dart';

class ColorsListView extends StatefulWidget
{
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView>
{
  int currentIndex = 0;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index)
      {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: ()
            {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = colors[index];
              setState(() {});
            },

            child: ColorItem(
              color: colors[index],
              isSelected: currentIndex == index,
            ),
          ),
        );
      }),
    );
  }
}
