import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:umyra/src/core/resources/app_colors.dart';
import 'package:umyra/src/core/widgets/column_spacer.dart';
import 'package:umyra/src/core/widgets/custom_app_bar.dart';
import 'package:umyra/src/features/screens/home/widgets/book_content.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Book\'s',
      //       style: Theme.of(context)
      //           .textTheme
      //           .headlineSmall
      //           ?.copyWith(fontWeight: FontWeight.w700)),
      //   leading: Padding(
      //     padding: const EdgeInsets.all(19),
      //     child: Container(
      //       decoration: const BoxDecoration(
      //           color: AppColors.whiteColor,
      //           borderRadius: BorderRadius.all(Radius.circular(12))),
      //       child: Icon(
      //         Icons.arrow_back,
      //         color: Colors.black,
      //       ),
      //     ),
      //   ),
      //   backgroundColor: AppColors.background,
      //   elevation: 0,
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomAppBar(title: 'Book\'s'),
              const ColumnSpacer(2),
              AlignedGridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 6.5,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) => const BookContentWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
