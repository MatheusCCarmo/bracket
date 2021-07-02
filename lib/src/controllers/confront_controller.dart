import 'package:bracket/src/model/bracket_item.dart';
import 'package:flutter/material.dart';

import 'bracket_item_controller.dart';

class ConfrontController {
  final BracketItemController item1Controller;
  final BracketItemController item2Controller;

  ConfrontController(
      {required this.item1Controller, required this.item2Controller});

  ValueNotifier<BracketItem?> choosenItem = ValueNotifier<BracketItem?>(null);

  void chooseItem(BracketItem item) {
    choosenItem.value = item;
    if (item1Controller.bracketItem == item) {
      item1Controller.handleClick();
      item2Controller.isChoosen.value = false;
    } else {
      item2Controller.handleClick();
      item1Controller.isChoosen.value = false;
      // print('item2Controller ${item2Controller.isChoosen.value}');
    }
    print(item.title);
  }
}
