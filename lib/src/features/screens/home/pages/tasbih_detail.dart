import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar_blue.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_tasbih.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_bloc.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_event.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_state.dart';

import '../../../../core/dependencies/injection_container.dart';

class TasbihDetail extends StatefulWidget {
  final TasbihModel tasbihData;
  const TasbihDetail({super.key, required this.tasbihData});

  @override
  State<TasbihDetail> createState() => _TasbihDetailState();
}

class _TasbihDetailState extends State<TasbihDetail> {
  @override
  Widget build(BuildContext context) {
    int previousNumber = -1;
    final number = ValueNotifier(0);
    final PageController pageViewController = PageController(initialPage: 0);
    int activePage = 0;
    List innew = [
      container1(widget.tasbihData.arabic),
      container2(widget.tasbihData.transcript),
      container3(widget.tasbihData.translation),
    ];
    return BlocProvider(
      create: (context) => getIt<TimeBloc>()..add(TasbihData()),
      child: Scaffold(
        body: BlocBuilder<TimeBloc, TimeState>(
          builder: (context, state) {
            if (state is TasbihSuccess) {
              return SafeArea(
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomAppBarBlue(title: widget.tasbihData.title),
                      const ColumnSpacer(2),
                      ListView(
                        shrinkWrap: true,
                        children: [
                          Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                height: 350,
                                decoration: const BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(24))),
                                child: PageView.builder(
                                    scrollDirection: Axis.horizontal,
                                    controller: pageViewController,
                                    onPageChanged: (curIndex) {
                                      setState(() {
                                        activePage = curIndex;
                                      });
                                    },
                                    itemCount: 3,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return innew[index % innew.length];
                                    }),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List<Widget>.generate(
                                      innew.length,
                                      (curIndex) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: InkWell(
                                              onTap: () {
                                                pageViewController
                                                    .animateToPage(curIndex,
                                                        duration:
                                                            const Duration(
                                                                milliseconds:
                                                                    300),
                                                        curve: Curves.easeIn);
                                              },
                                              child: CircleAvatar(
                                                radius: 5,
                                                backgroundColor:
                                                    activePage == curIndex
                                                        ? AppColors.contentBlue
                                                        : Colors.grey,
                                              ),
                                            ),
                                          )),
                                ),
                              ),
                            ],
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
                              InkWell(
                                child: Container(
                                  width: 52,
                                  height: 52,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white),
                                  child: InkWell(
                                    onLongPress: () {
                                      number.value = 0;
                                    },
                                    child: Icon(
                                      Icons.replay,
                                      color: AppColors.contentBlue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 70, top: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(130),
                                color: Colors.white),
                            height: 250,
                            width: 250,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: () {
                                    previousNumber = number.value;
                                    number.value = previousNumber + 1;
                                  },
                                  child: Container(
                                      decoration: const BoxDecoration(),
                                      margin: const EdgeInsets.only(
                                          top: 35, left: 2),
                                      child: SvgPicture.asset(
                                        AppSvgImages.counterDecor,
                                        height: 180,
                                      )),
                                ),
                                Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ValueListenableBuilder(
                                          valueListenable: number,
                                          builder: (context, value, _) {
                                            return AnimatedSwitcher(
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              transitionBuilder:
                                                  (child, animation) {
                                                final position = Tween<Offset>(
                                                  begin: (previousNumber <
                                                          value)
                                                      ? (animation.status ==
                                                              AnimationStatus
                                                                  .completed)
                                                          ? const Offset(0, 1)
                                                          : const Offset(0, -1)
                                                      : const Offset(0, 1),
                                                  end: Offset.zero,
                                                ).animate(animation);
                                                return FadeTransition(
                                                  opacity: animation,
                                                  child: SlideTransition(
                                                    position: position,
                                                    child: child,
                                                  ),
                                                );
                                              },
                                              child: GestureDetector(
                                                child: Text(
                                                  value.toString(),
                                                  key: UniqueKey(),
                                                  style: TextStyle(
                                                    fontSize: 70,
                                                    fontWeight: FontWeight.w700,
                                                    color:
                                                        AppColors.contentBlue,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
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
              );
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget container1(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(24)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }

  Widget container2(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(24)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700))
          ],
        ),
      ),
    );
  }

  Widget container3(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(12)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700))
          ],
        ),
      ),
    );
  }
}
