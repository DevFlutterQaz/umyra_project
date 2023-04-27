import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:umyra/src/core/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.book).existsSync(), true);
    expect(File(AppImages.islam).existsSync(), true);
    expect(File(AppImages.namaz).existsSync(), true);
    expect(File(AppImages.umra1).existsSync(), true);
    expect(File(AppImages.umra2).existsSync(), true);
  });
}
