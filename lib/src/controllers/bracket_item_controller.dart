import 'package:bracket/src/model/bracket_item.dart';
import 'package:flutter/material.dart';

class BracketItemController {
  final BracketItem bracketItem;
  final isChoosen = ValueNotifier<bool>(false);

  BracketItemController(this.bracketItem);

  void handleClick() {
    isChoosen.value = !isChoosen.value;
  }
}
