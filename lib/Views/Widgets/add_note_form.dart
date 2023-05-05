import 'package:flutter/cupertino.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

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
            padding: const EdgeInsets.all(16),
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