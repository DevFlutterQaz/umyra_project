import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';

class ExpansionQuestionAnswear extends StatelessWidget {
  final String question;
  final String answer;
  final String index;
  const ExpansionQuestionAnswear({
    super.key,
    required this.question,
    required this.answer,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.lightgrayColor6, width: 0.5),
      ),
      elevation: 0,
      child: ExpansionTile(
        title: Text('$index. $question',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w600)),
        collapsedTextColor: Colors.black,
        iconColor: Colors.black,
        collapsedIconColor: Colors.black,
        textColor: Colors.black,
        childrenPadding:
            const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
        expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(answer, style: Theme.of(context).textTheme.titleMedium),
        ],
      ),
    );
  }
}
