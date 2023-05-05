import 'package:flutter/cupertino.dart';
import 'package:notes_app/Views/Widgets/color_item.dart';

class ColorsListView extends StatefulWidget
{
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView>
{
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffAC3931),
    Color(0xffE5D352),
    Color(0xffD9E76C),
    Color(0xff537D8D),
    Color(0xff482C3D),
  ];

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
              setState(() {

              });
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
