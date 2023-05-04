import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_time_format/date_time_format.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'edit_note_view_body.dart';

class CustomNoteItem extends StatelessWidget
{
  CustomNoteItem({super.key, required this.title, required this.subTitle});
  DateTime now = DateTime.now();
  String? title;
  String? subTitle;

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return const EditNoteViewBody();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: const Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(16)
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(title!, style: const TextStyle(fontSize: 28, color: Colors.black)),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: Text(subTitle!, style: const TextStyle(fontSize: 14, color: Colors.black)),
              ),
              trailing: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.withOpacity(0.1)
                  ),
                  child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.trash, color: Colors.red, size: 22,))
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(now.format('d M, Y'), style: const TextStyle(color: Colors.black, fontSize: 14)),
            )
          ],
        ),
      ),
    );
  }
}
