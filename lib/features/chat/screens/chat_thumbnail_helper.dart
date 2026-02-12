import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Builds thumbnail for picked media using file path (mobile only).
Widget buildPickedMediaThumbnail(String path, bool isSvg) {
  final file = File(path);
  if (isSvg) {
    return SvgPicture.file(file, fit: BoxFit.cover);
  }
  return Image.file(file, fit: BoxFit.cover);
}
