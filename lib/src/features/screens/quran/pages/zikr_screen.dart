import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/resources.dart';
import '../../../../core/resources/text_styles.dart';
import '../../../../core/widgets/arrow_button.dart';
import '../../../app/router/app_router.dart';

class ZikrScreen extends StatefulWidget {
  const ZikrScreen({super.key});

  @override
  State<ZikrScreen> createState() => _ZikrScreenState();
}

class _ZikrScreenState extends State<ZikrScreen> {
  @override
  Widget build(BuildContext context) {
    List titles = [
      'Салауат',
      'Әстәғфируллаһ',
      'Субханаллаһ',
      'Әлхәмдулилләһ',
      'Аллауһу Әкбар',
    ];

    bool check = true;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
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
                        'Зікірлер',
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
                            onTap: () =>
                                context.router.push(const SalauatScreenRoute()),
                            title: Text(titles[index],
                                style: TextStyles.black600(context)),
                            trailing: IconButton(
                              alignment: AlignmentDirectional.centerEnd,
                              icon: SvgPicture.asset(
                                  AppSvgImages.rightArrowBlack),
                              onPressed: () => index == 0
                                  ? context.router
                                      .push(const SalauatScreenRoute())
                                  : context.router
                                      .push(const SalauatScreenRoute()),
                              //onPressed: null,
                            ),
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  );
                })
          ],
        ),
      )),
    );
  }
}
