import 'package:flutter/material.dart';

class BracketItem {
  String? title;
  String? imageUrl;
  bool isEditMode;

  BracketItem({
    this.title,
    this.imageUrl,
    this.isEditMode = false,
  });
}
