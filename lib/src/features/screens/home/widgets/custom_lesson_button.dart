import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/text_styles.dart';
import 'package:umyra/src/core/widgets/row_spacer.dart';

class CustomLessonButton extends StatefulWidget {
  final String title;
  final bool check;
  final Function() onTap;
  final Function() onContainerTap;
  final bool ifCheckBoxExist;
  const CustomLessonButton({
    super.key,
    required this.title,
    required this.check,
    required this.onTap,
    required this.onContainerTap,
    required this.ifCheckBoxExist,
  });

  @override
  State<CustomLessonButton> createState() => _CustomLessonButtonState();
}

class _CustomLessonButtonState extends State<CustomLessonButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onContainerTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(color: AppColors.lightgrayColor6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.4, vertical: 19.5),
          child: Row(
            children: [
              const Icon(
                Icons.circle_rounded,
                size: 15,
                color: AppColors.darkBlue2,
              ),
              const RowSpacer(1.8),
              Expanded(
                child: Text(
                  widget.title,
                  textAlign: TextAlign.start,
                  style: TextStyles.black700Fs20(context),
                ),
              ),
              const Spacer(),
              widget.ifCheckBoxExist
                  ? RoundCheckBox(
                      isChecked: widget.check,
                      animationDuration: Duration.zero,
                      size: 30,
                      onTap: (select) {
                        // widget.onTap;
                      },
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
