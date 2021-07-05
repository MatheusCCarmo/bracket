import 'dart:math';

import 'package:bracket/src/model/bracket_item.dart';
import 'package:flutter/material.dart';

class BracketController {
  static BracketController instance = BracketController();

  ValueNotifier<int> itemsQuantity = ValueNotifier(16);

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

  List<BracketItem> getFirstColumn(int itemsQuantity) {
    if (itemsQuantity <= 1) {
      return [champion];
    } else if (itemsQuantity <= 2) {
      return finalists.sublist(0, 1);
    } else if (itemsQuantity <= 4) {
      return semiFinalists.sublist(0, 2);
    } else if (itemsQuantity <= 8) {
      return roundOfEight.sublist(0, 4);
    } else {
      return roundOfSixteen.sublist(0, 8);
    }
  }

  List<BracketItem> getLastColumn(int itemsQuantity) {
    if (itemsQuantity <= 1) {
      return [champion];
    } else if (itemsQuantity <= 2) {
      return finalists.sublist(1);
    } else if (itemsQuantity <= 4) {
      return semiFinalists.sublist(2);
    } else if (itemsQuantity <= 8) {
      return roundOfEight.sublist(4);
    } else {
      return roundOfSixteen.sublist(8);
    }
  }
}
