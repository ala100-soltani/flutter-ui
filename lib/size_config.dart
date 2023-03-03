import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? mediaquery;
  static double? screenwidth;
  static double? screenheight;
  static double? boxsizehorizental;
  static double? boxsizevertical;

  void init(BuildContext contextapp) {
    mediaquery = MediaQuery.of(contextapp);

    screenwidth = mediaquery!.size.width;

    screenheight = mediaquery!.size.height;

    boxsizehorizental = screenwidth! / 100;
    boxsizevertical = screenheight! / 100;
  }
}
