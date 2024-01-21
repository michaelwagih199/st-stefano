import 'package:flutter/material.dart';

import '../../utils/constants/strings.dart';

BoxDecoration backGroundPattern() {
  return const BoxDecoration(
    image: DecorationImage(
      image: AssetImage(IMAGE_BACK_PATTERN),
      fit: BoxFit.cover,
    ),
  );
}
