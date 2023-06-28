import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar_blue.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_tasbih.dart';

class TasbihDetail extends StatelessWidget {
  final TasbihModel tasbihData;
  const TasbihDetail({super.key, required this.tasbihData});

  @override
  Widget build(BuildContext context) {
    int previousNumber = -1;
    final number = ValueNotifier(0);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              colors: [
                Color(0xff14BCC2),
                Color(0xff14BCC2),
                Color(0xff025452),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBarBlue(title: tasbihData.title),
              const ColumnSpacer(2),
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            tasbihData.arabic,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\n\n${tasbihData.transcript} \n\n ${tasbihData.translation}',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // const AudioRegularButtons(),
              const ColumnSpacer(4),
              Stack(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: const Icon(
                          Icons.replay,
                          color: AppColors.contentBlue,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 70, top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(120),
                        color: Colors.white),
                    height: 250,
                    width: 250,
                    child: Stack(
                      children: [
                        Container(
                            decoration: const BoxDecoration(),
                            margin: const EdgeInsets.only(top: 35, left: 2),
                            child: SvgPicture.asset(
                              AppSvgImages.counterDecor,
                              height: 180,
                            )),
                        Container(
                          margin: const EdgeInsets.only(left: 60),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                '424',
                                style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.contentBlue),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
