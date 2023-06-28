import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/resources/resources.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      // child: CupertinoSearchTextField(
      //   placeholder: 'Search',
      //   placeholderStyle: TextStyle(color: AppColors.contentBlue),
      //   padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      //   decoration: BoxDecoration(
      //     color: AppColors.whiteColor,
      //     border: Border(bottom: BorderSide(color: AppColors.contentBlue)),
      //   ),
      //   prefixIcon: Padding(
      //     padding: EdgeInsets.only(left: 10),
      //     child: Icon(
      //       CupertinoIcons.search,
      //       color: AppColors.contentBlue,
      //     ),
      //   ),
      // ),
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      // Container(
      //   padding: const EdgeInsets.all(8),
      //   width: 40,
      //   height: 40,
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(12),
      //       color: const AppColors.contentBlue),
      //   child: SvgPicture.asset(AppSvgImages.send),
      // ),
      //   ],
      // ),
      child: CupertinoTextField(
        padding: const EdgeInsets.symmetric(vertical: 16),
        placeholder: 'Search',
        placeholderStyle: TextStyle(color: AppColors.contentBlue, fontSize: 18),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.contentBlue)),
        ),
        prefix: Icon(
          CupertinoIcons.search,
          color: AppColors.contentBlue,
          size: 25,
        ),
        suffix: Container(
          padding: const EdgeInsets.all(8),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.contentBlue),
          child: SvgPicture.asset(AppSvgImages.send),
        ),
      ),
    );
  }
}
