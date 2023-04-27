import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:umyra/src/core/resources/resources.dart';

void main() {
  test('app_svg_images assets test', () {
    expect(File(AppSvgImages.alarm).existsSync(), true);
    expect(File(AppSvgImages.attention).existsSync(), true);
    expect(File(AppSvgImages.book).existsSync(), true);
    expect(File(AppSvgImages.calendar).existsSync(), true);
    expect(File(AppSvgImages.calendar2).existsSync(), true);
    expect(File(AppSvgImages.heart).existsSync(), true);
    expect(File(AppSvgImages.marker).existsSync(), true);
    expect(File(AppSvgImages.namaz).existsSync(), true);
    expect(File(AppSvgImages.navigation).existsSync(), true);
    expect(File(AppSvgImages.next).existsSync(), true);
    expect(File(AppSvgImages.notwork).existsSync(), true);
    expect(File(AppSvgImages.qibla).existsSync(), true);
    expect(File(AppSvgImages.replay).existsSync(), true);
    expect(File(AppSvgImages.tasbih).existsSync(), true);
  });
}
