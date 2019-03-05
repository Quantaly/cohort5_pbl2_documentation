import 'dart:io';
import 'dart:math';

import 'package:image/image.dart';

void main(List<String> args) async {
  await for (final fse in Directory(args.length > 1 ? args[0] : "web/images").list(recursive: true)) {
    if (fse is File && fse.path.endsWith(".jpg")) {
      final image = decodeImage(await fse.readAsBytes());
      final size = Point(image.width, image.height);
      final newSize = resizeMap[size];
      if (newSize != null) {
        final newImage = copyResize(image, newSize.x, newSize.y);
        await fse.writeAsBytes(newImage.getBytes());
      }
    }
  }
}

final resizeMap = {
  Point(4048, 3036): Point(1012, 759),
};
