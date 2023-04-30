import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/resources.dart';
import '../../../../core/resources/text_styles.dart';
import '../../../../core/widgets/column_spacer.dart';
import '../../../../core/widgets/constants.dart';
import '../widgets/profile_text_field.dart';

class MyInformationScreen extends StatefulWidget {
  const MyInformationScreen({super.key});

  @override
  State<MyInformationScreen> createState() => _MyInformationScreenState();
}

bool onChangedCheck1 = false;
bool onChangedCheck2 = false;

class _MyInformationScreenState extends State<MyInformationScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return Scaffold(
      //  backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Column(
              children: [
                const CustomAppBar(title: 'Менің деректерім'),
                const ColumnSpacer(2),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.darkBlue,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(AppSvgImages.profileConstant),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Сурет таңдау",
                  style: TextStyles.green400Fs14(context),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 44),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const ProfileTextField(
                          title: 'Аты', placeholder: 'Аты жөнді енгізіңіз'),
                      const SizedBox(height: 24),
                      const ProfileTextField(
                          title: 'Тегі', placeholder: 'Тегіңізді енгізіңіз'),
                      const SizedBox(height: 24),
                      const ProfileTextField(
                          title: 'Туған күні',
                          placeholder: 'Туған күніңізді енгізіңіз'),
                      const SizedBox(height: 24),
                      const ProfileTextField(
                          title: 'Телефон номері',
                          placeholder: 'Нөмірді енгізіңіз'),
                      const SizedBox(height: 24),
                      const ProfileTextField(
                          title: 'E-mail', placeholder: 'Поштаңызды енгізіңіз'),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Text(
                            'Жынысыңыз',
                            style: TextStyles.black400Fs12(context),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: onChangedCheck1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            activeColor: const Color(0xFF50A87E),
                            onChanged: ((value) => setState(
                                  () {
                                    onChangedCheck1 = !onChangedCheck1;
                                  },
                                )),
                          ),
                          Text('Ер', style: TextStyles.black400Fs14(context)),
                          const SizedBox(
                            width: 30,
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            activeColor: const Color(0xFF50A87E),
                            value: onChangedCheck2,
                            onChanged: ((value) => setState(
                                  () {
                                    onChangedCheck2 = !onChangedCheck2;
                                  },
                                )),
                          ),
                          Text('Әйел', style: TextStyles.black400Fs14(context)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          color: AppColors.whiteColor,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Constants.profileExitButton(
                              context, 'Delete account', () => null),
                        ),
                      ),
                      const SizedBox(height: 20),
                      //CustomButton(onPressed: () => null, label: 'Save'),
                    ],
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
