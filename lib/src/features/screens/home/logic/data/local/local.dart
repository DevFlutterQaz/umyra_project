import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_main_button.dart';

class Local {
  static List<ModelMainButton> mainButton = [
    ModelMainButton(image: AppSvgImages.qibla, title: 'Qible'),
    ModelMainButton(image: AppSvgImages.tasbih, title: 'Tasbih'),
    ModelMainButton(image: AppSvgImages.book, title: 'Book\'s'),
    ModelMainButton(image: AppSvgImages.navigation, title: 'Navigation'),
    ModelMainButton(image: AppImages.namaz, title: 'Namaz'),
    ModelMainButton(image: AppSvgImages.calendar2, title: 'Calendar')
  ];
}
