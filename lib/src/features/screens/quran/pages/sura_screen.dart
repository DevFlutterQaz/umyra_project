import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/widgets/arrow_button.dart';
import 'package:umyra/src/features/app/router/app_router.dart';

import '../../../../core/resources/resources.dart';
import '../../../../core/resources/text_styles.dart';

class SuraScreen extends StatefulWidget {
  const SuraScreen({super.key});

  @override
  State<SuraScreen> createState() => _SuraScreenState();
}

class _SuraScreenState extends State<SuraScreen> {
  @override
  Widget build(BuildContext context) {
    List titles = [
      'Фатиха',
      'Аср',
      'Фил',
      'Құрайыш',
      'Кәусәр',
      'Ықылас',
    ];

    bool check = true;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ArrowButton(
                      onPressed: () => context.router.pop(),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Сүрелер',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                const Icon(
                  Icons.search,
                  size: 30,
                ),
              ],
            ),
          ),
          const SizedBox(height: 34),
          ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16);
              },
              itemCount: titles.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
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
                        child: ListTile(
                          title: Text(titles[index],
                              style: TextStyles.black600(context)),
                          trailing: IconButton(
                            alignment: AlignmentDirectional.centerEnd,
                            icon:
                                SvgPicture.asset(AppSvgImages.rightArrowBlack),
                            onPressed: () => context.router
                                .push(const SuraScreenDetailRoute()),
                          ),
                          textColor: Colors.black,
                        ),
                      ),
                    ),
                  ],
                );
              })
        ],
      )),
    );
  }
}
