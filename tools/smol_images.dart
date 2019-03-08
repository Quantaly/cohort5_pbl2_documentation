import 'dart:io';

import 'package:image/image.dart';

void main(List<String> args) async {
  await for (final fse in Directory(args.length > 1 ? args[0] : "web/images")
      .list(recursive: true)) {
    if (fse is File && fse.path.endsWith(".jpg")) {
      final image = decodeImage(await fse.readAsBytes());
      if (image.width > 2000) {
        print("Processing ${fse.path}...");
        final newImage = copyResize(image, (image.width / 4).floor());
        await fse.writeAsBytes(encodeJpg(newImage));
        print("Done processing ${fse.path}");
      } else {
        print("Skipping ${fse.path}");
      }
    }
  }
}
