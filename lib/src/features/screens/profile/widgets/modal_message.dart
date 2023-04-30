import 'package:flutter/cupertino.dart';

import '../../../../core/resources/text_styles.dart';

class ModalMessage extends StatelessWidget {
  const ModalMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        'Жүйеден шығу',
        style: TextStyles.black600(context),
      ),
      content: const Text(
        'Сіз шынымен жүйеден шыққыңыз келеді ме?',
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
      ),
      actions: [
        CupertinoDialogAction(
            child: const Text('Жоқ'), onPressed: () => Navigator.pop(context)),
        CupertinoDialogAction(
            child: Text(
          'Ия',
          style: TextStyles.red400Fs13(context),
        ))
      ],
    );
  }
}
