import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';

// ignore: must_be_immutable
class RadioButton extends StatefulWidget {
  RadioButton({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.txt,
    this.color = AppColors.whiteColor,
    this.selectColor = AppColors.greenColor,
    this.onChanged,
  }) : super(key: key);

  final int value;
  final int groupValue;
  final Color color;
  final Color selectColor;
  final String txt;
  void Function(int?)? onChanged;

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bool selected = widget.value != widget.groupValue;
        if (selected) {
          widget.onChanged!(widget.value);
        } else {
          widget.onChanged!(3);
        }
      },
      child: Row(
        children: [
          Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: widget.value == widget.groupValue
                          ? widget.selectColor
                          : AppColors.grayColor),
                  color: widget.value == widget.groupValue
                      ? widget.selectColor
                      : widget.color),
              child: widget.value == widget.groupValue
                  ? Icon(
                      Icons.check,
                      color: widget.color,
                      size: 15,
                    )
                  : null),
          const SizedBox(width: 10),
          Text(
            widget.txt,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
