import 'package:umyra/src/core/resources/resources.dart';
import 'package:umyra/src/features/screens/home/logic/api/model/model_main_button.dart';

class Local {
  static List<ModelMainButton> mainButton = [
    ModelMainButton(image: AppSvgImages.qibla, title: 'Qible', id: 1),
    ModelMainButton(image: AppSvgImages.tasbih, title: 'Tasbih', id: 2),
    ModelMainButton(image: AppSvgImages.book, title: 'Books', id: 3),
    ModelMainButton(image: AppSvgImages.navigation, title: 'Place', id: 4),
    ModelMainButton(image: AppSvgImages.namaz, title: 'Namaz', id: 5),
    ModelMainButton(image: AppSvgImages.calendar2, title: 'Calendar', id: 6)
  ];
}
