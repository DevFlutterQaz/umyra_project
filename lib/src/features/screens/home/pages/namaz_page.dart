import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar_blue.dart';
import 'package:url_launcher/url_launcher.dart';

class NamazScreen extends StatelessWidget {
  const NamazScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List names = [
      AppImages.namazFajr,
      AppImages.namazBesinSunna,
      AppImages.namazBesinParyz,
      AppImages.namazAsr,
      AppImages.namazAqsham,
      AppImages.namazIsha,
      AppImages.namazIshaUtir,
    ];
    List urls = [
      Uri.parse('https://youtu.be/FZLpMA0x7hY'),
      Uri.parse('https://youtu.be/MghQVGW43p0'),
      Uri.parse('https://youtu.be/wSqBthsHCMY'),
      Uri.parse('https://youtu.be/bXcIHbXLLUM'),
      Uri.parse('https://youtu.be/YJ18jDawbGE'),
      Uri.parse('https://youtu.be/2YaBqKPf-Kk'),
      Uri.parse('https://youtu.be/tbnnz6yZ0vE'),
    ];

    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
          children: [
            const CustomAppBarBlue(title: 'Namaz'),
            const ColumnSpacer(2),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () => launchUrl(urls[index]),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/png/${names[index]}'),
                            fit: BoxFit.cover),
                      ),
                      height: 200,
                    ),
                  );
                },
                itemCount: names.length,
                separatorBuilder: (context, index) => const SizedBox(height: 8),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
