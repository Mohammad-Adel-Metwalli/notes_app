import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom_button.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget
{
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        color: Colors.white12
      ),

      child: const SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget
{
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm>
{
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context)
  {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,

      child: Column(
        children: [
          const SizedBox(height: 32),

          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomTextField(
              onSaved: (value)
              {
                title = value;
              },
                hintText: 'Title',
                maxLines: 1
            ),
          ),

          const SizedBox(height: 1),

          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomTextField(
                onSaved: (value)
                {
                  subTitle = value;
                },
                hintText: 'Content',
                maxLines: 5
            ),
          ),

          const SizedBox(height: 70),

          Padding(
            padding: EdgeInsets.all(16),
            child: CustomButton(
              onTap: ()
              {
                if(formKey.currentState!.validate())
                {
                  formKey.currentState!.save();
                }

                else
                {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {

                  });
                }
              },
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
