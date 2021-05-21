import 'package:flutter/material.dart';

class MediaQueryInfo {
  static getWidth(context) {
    return MediaQuery.of(context).size.width;
  }
}
