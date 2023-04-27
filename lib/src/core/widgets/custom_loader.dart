import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:umyra/src/core/resources/app_colors.dart';

class CircleLoader extends StatelessWidget {
  const CircleLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return const CupertinoActivityIndicator();
    } else if (Platform.isAndroid) {
      return Center(
        child: Container(
          width: 35,
          height: 35,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.greenColor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: CircularProgressIndicator(
              color: AppColors.whiteColor,
              strokeWidth: 2.5,
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
