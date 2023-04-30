import 'package:flutter/material.dart';

import '../../../../core/resources/text_styles.dart';

class OutlineExpansionTile extends StatefulWidget {
  const OutlineExpansionTile({super.key});

  @override
  State<OutlineExpansionTile> createState() => _OutlineExpansionTileState();
}

class _OutlineExpansionTileState extends State<OutlineExpansionTile> {
  @override
  Widget build(BuildContext context) {
    bool check = true;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1.0,
              //spreadRadius: 1.0,
            )
          ],
        ),
        child: ExpansionTile(
          onExpansionChanged: (value) => setState(() {
            check = !check;
          }),
          title: Text('Таңертең оқылатын дұға',
              style: TextStyles.black600(context)),
          // trailing: const Icon(
          // ),
          textColor: Colors.black,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Column(
                children: const [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
