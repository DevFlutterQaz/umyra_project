import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomCards extends StatelessWidget {
  final String title;
  final String mesto;
  final String plane;
  final String data;
  final String costName;
  final String cost;
  final String phoneNumber;
  // final Function() whatsAppFunc;
  // final Function() telegramAppFunc;
  const CustomCards({
    super.key,
    required this.title,
    required this.mesto,
    required this.plane,
    required this.data,
    required this.costName,
    required this.cost,
    required this.phoneNumber,
    // required this.whatsAppFunc,
    // required this.telegramAppFunc
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/png/${AppImages.umraQibla}'),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                const ColumnSpacer(0.7),
                Text(mesto,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400)),
                const ColumnSpacer(0.7),
                Text(plane,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400)),
                const ColumnSpacer(0.7),
                Text(data,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400)),
                const ColumnSpacer(0.7),
                Text(costName,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400)),
                Text(cost,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                const ColumnSpacer(1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(phoneNumber,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    Row(
                      children: [
                        InkWell(
                            onTap: () => launchUrl(Uri.parse(
                                'https://wa.me/message/V2RKHCWZE3X4C1')),
                            child: SvgPicture.asset(AppSvgImages.whatsappLogo)),
                        const SizedBox(
                          width: 8,
                        ),
                        InkWell(
                            onTap: () =>
                                launchUrl(Uri.parse('https://t.me/sltnkondy')),
                            child: SvgPicture.asset(AppSvgImages.telegaLogo))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
