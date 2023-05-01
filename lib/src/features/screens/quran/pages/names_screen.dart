import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/resources.dart';
import '../../../../core/resources/text_styles.dart';
import '../../../../core/widgets/arrow_button.dart';

class NamesScreen extends StatefulWidget {
  const NamesScreen({super.key});

  @override
  State<NamesScreen> createState() => _NamesScreenState();
}

class _NamesScreenState extends State<NamesScreen> {
  @override
  Widget build(BuildContext context) {
    List titles = [
      'Алла (Аллаһ) اللَّهُ',
      'Ар-Рахман الرَّحْمٰنُ',
      'Ар-Рахим ٱلرَّحِيمُ',
      'Әл-Мәлик  المَلِكُ',
      'Әл-Қуддус القُدُّوسُ',
      'Әс-Сәләм السَّلاَمُ',
      'Әл-Мумин المُؤْمِنُ',
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
                      'Алланың 99 есімі',
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
                        child: ExpansionTile(
                          onExpansionChanged: (value) => setState(() {
                            check = !check;
                          }),
                          title: Text(titles[index],
                              style: TextStyles.black600(context)),
                          trailing: IconButton(
                            alignment: AlignmentDirectional.centerEnd,
                            icon:
                                SvgPicture.asset(AppSvgImages.rightArrowBlack),
                            onPressed: () {},
                          ),
                          textColor: Colors.black,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 18),
                              child: Column(
                                children: const [],
                              ),
                            ),
                          ],
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
