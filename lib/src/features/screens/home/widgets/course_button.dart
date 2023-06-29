import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';

class CourseButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final bool isFinish;
  final String image;
  const CourseButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.isFinish,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: isFinish
                  ? const EdgeInsets.fromLTRB(1, 1, 50, 1)
                  : const EdgeInsets.all(0),
              child: Container(
                height: MediaQuery.of(context).size.width / 3.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6),
                      BlendMode.saturation,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Padding(
            padding: isFinish
                ? const EdgeInsets.only(right: 50)
                : const EdgeInsets.all(0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: AppColors.whiteColor),
              ),
            ),
          ),
        ),
        isFinish
            ? Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.contentBlue,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Icon(
                          CupertinoIcons.check_mark,
                          color: AppColors.whiteColor,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
