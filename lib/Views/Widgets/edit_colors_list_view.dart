import 'package:flutter/cupertino.dart';
import '../Models/note_model.dart';
import '../constants.dart';
import 'color_item.dart';

class EditColorsListView extends StatefulWidget
{
  const EditColorsListView({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditColorsListView> createState() => _EditColorsListViewState();
}

class _EditColorsListViewState extends State<EditColorsListView>
{
  late int currentIndex;

  @override
  void initState()
  {
    super.initState();
    currentIndex = colors.indexOf(Color(widget.note.color));
  }

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
                  widget.note.color = colors[index].value;
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
