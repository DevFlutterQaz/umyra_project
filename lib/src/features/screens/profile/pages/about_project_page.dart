import 'package:flutter/material.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';

import '../../../../core/resources/text_styles.dart';

class AboutProjectScreen extends StatelessWidget {
  const AboutProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(children: [
              const CustomAppBar(title: 'Жоба туралы'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                child: Text(
                  """Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. . Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. Жоба туралы жазылады. """,
                  style: TextStyles.black400Fs16(context),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
