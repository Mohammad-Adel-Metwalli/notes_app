import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../edit_note_view.dart';

class CustomNoteItem extends StatelessWidget
{
  const CustomNoteItem({super.key});


  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: ()
      {
        Navigator.pushNamed(context, EditNoteView.id);
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
              title: const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text('Flutter Tips', style: TextStyle(fontSize: 28, color: Colors.black)),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(bottom: 35),
                child: Text('Build Your Career With Mohammad Adel', style: TextStyle(fontSize: 14, color: Colors.black)),
              ),
              trailing: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.withOpacity(0.1)
                  ),
                  child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.trash, color: Colors.red, size: 22,))
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text('4 May, 2023', style: TextStyle(color: Colors.black, fontSize: 14)),
            )
          ],
        ),
      ),
    );
  }
}
