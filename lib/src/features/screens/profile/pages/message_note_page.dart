import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/text_styles.dart';

class MessageNoteScreen extends StatelessWidget {
  const MessageNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ColumnSpacer(1),
              const CustomAppBar(title: 'title'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 34),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    boxShadow: kElevationToShadow[3],
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.whiteColor,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Намаз уақыты',
                            style: TextStyles.black600(context),
                          ),
                          const CupertinoSwitch(value: false, onChanged: null),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Күн аяты',
                            style: TextStyles.black600(context),
                          ),
                          const CupertinoSwitch(value: false, onChanged: null),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Жаңалықтар',
                            style: TextStyles.black600(context),
                          ),
                          const CupertinoSwitch(value: false, onChanged: null),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Жаңа есімдер',
                            style: TextStyles.black600(context),
                          ),
                          const CupertinoSwitch(value: false, onChanged: null),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
