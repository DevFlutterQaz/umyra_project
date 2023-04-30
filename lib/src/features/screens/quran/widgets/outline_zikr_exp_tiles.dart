import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/resources.dart';
import '../../../../core/resources/text_styles.dart';

class OutlineZikrExpansionTile extends StatefulWidget {
  const OutlineZikrExpansionTile({super.key});

  @override
  State<OutlineZikrExpansionTile> createState() => _OutlineZikrExpansionTile();
}

class _OutlineZikrExpansionTile extends State<OutlineZikrExpansionTile> {
  @override
  Widget build(BuildContext context) {
    bool check = true;
    return SingleChildScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Padding(
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
            trailing: IconButton(
              alignment: AlignmentDirectional.centerEnd,
              icon: SvgPicture.asset(AppSvgImages.rightArrowBlack),
              onPressed: () {},
            ),
            textColor: Colors.black,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                child: Column(
                  children: const [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
