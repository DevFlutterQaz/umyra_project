import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField(
      {super.key, required this.title, required this.placeholder});
  final String title;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return Column(
      children: [
        TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return placeholder;
            }
            return null;
          },
          controller: textController,
          decoration: InputDecoration(
              hintText: placeholder,
              filled: true,
              fillColor: Colors.white,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: AppColors.darkBlue)),
              label: Text(title),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xffD8DBDE),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              labelStyle: const TextStyle(
                  fontFamily: 'Lato',
                  color: Color(0xFF1A1C1F),
                  fontSize: 18,
                  fontWeight: FontWeight.w400)),
        ),
      ],
    );
  }
}
