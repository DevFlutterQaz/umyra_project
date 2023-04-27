import 'package:flutter/cupertino.dart';
import 'package:umyra/src/core/resources/app_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: CupertinoSearchTextField(
        padding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            border: Border.all(color: AppColors.lightgrayColor6)),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(CupertinoIcons.search),
        ),
      ),
    );
  }
}
