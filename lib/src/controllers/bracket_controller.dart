import 'package:flutter/cupertino.dart';

class BracketController {
  ValueNotifier<int> itemsQuantity = ValueNotifier(8);

  changeQuantity(int value) {
    itemsQuantity.value = value;
  }
}
