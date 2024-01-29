
import 'package:flutter/material.dart';

extension AppContextExtensions on BuildContext {
  double get deviceWidth => MediaQuery.of(this).size.width;

  double get deviceHeight => MediaQuery.of(this).size.height;
}

class Responsive{
  static width(double p,BuildContext context)
  {
    return MediaQuery.of(context).size.width*(p/100);
  }
  static height(double p,BuildContext context)
  {
    return MediaQuery.of(context).size.height*(p/100);
  }
}