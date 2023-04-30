import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/screens/profile/widgets/one_card_widget.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                const CustomAppBar(title: "Менің карталарым"),
                const ColumnSpacer(3.2),
                const OneCardWidget(),
                const ColumnSpacer(0.8),
                const OneCardWidget(),
                const ColumnSpacer(0.8),
                ListTile(
                  title: const Text('Жаңа карта қосу'),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      color: const Color(0xffF6F7FF),
                      child: IconButton(
                        onPressed: null,
                        icon: SvgPicture.asset(AppSvgImages.plusIcon),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
