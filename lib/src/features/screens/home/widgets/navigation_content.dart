import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_navigation.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_bloc.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_event.dart';
import 'package:umyra/src/features/screens/home/logic/bloc/time_state.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/dependencies/injection_container.dart';

class NavigationContent extends StatelessWidget {
  final ModelNavigation navigationData;
  const NavigationContent({
    super.key,
    required this.navigationData,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TimeBloc>()..add(NavigationData()),
      child: Card(
        color: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: AppColors.lightgrayColor6, width: 0.5),
        ),
        elevation: 0,
        child: ExpansionTile(
          title: Text(navigationData.topic,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600)),
          collapsedTextColor: Colors.black,
          iconColor: AppColors.contentBlue,
          collapsedIconColor: AppColors.contentBlue,
          textColor: Colors.black,
          childrenPadding:
              const EdgeInsets.symmetric(horizontal: 17, vertical: 9),
          children: [
            const Divider(color: AppColors.contentBlue),
            const SizedBox(height: 10),
            BlocBuilder<TimeBloc, TimeState>(
              builder: (context, state) {
                if (state is NavigationSuccess) {
                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (contex, index) {
                      return InkWell(
                        onTap: () {
                          launchUrl(
                              Uri.parse(state.navigationData[index].link));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              state.navigationData[index].title,
                              style: const TextStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                            const Icon(
                              Icons.flag_outlined,
                              color: AppColors.contentBlue,
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const Divider(color: AppColors.darkgrayColor),
                    itemCount: state.navigationData.length,
                  );
                }
                return Container();
              },
            )
          ],
        ),
      ),
    );
  }
}
