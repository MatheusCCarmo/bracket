import 'dart:math';

import 'package:bracket/src/model/bracket_item.dart';
import 'package:flutter/material.dart';

class BracketController {
  static BracketController instance = BracketController();

  ValueNotifier<int> itemsQuantity = ValueNotifier(4);

  BracketItem champion = BracketItem(id: 1);
  List<BracketItem> finalists = [BracketItem(id: 2), BracketItem(id: 3)];
  List<BracketItem> semiFinalists =
      List.generate(4, (index) => BracketItem(id: index + 4));
  List<BracketItem> roundOfEight =
      List.generate(8, (index) => BracketItem(id: index + 8));
  List<BracketItem> roundOfSixteen =
      List.generate(16, (index) => BracketItem(id: index + 16));

  late List<BracketItem> allItems = [
    champion,
    ...finalists,
    ...semiFinalists,
    ...roundOfEight,
    ...roundOfSixteen
  ];

  double log2(num x) => log(x) / log(2);

  changeQuantity(int value) {
    itemsQuantity.value = value;
  }
}
