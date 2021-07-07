import 'dart:math';

import 'package:bracket/src/model/bracket_item.dart';
import 'package:bracket/src/widgets/bracket_item_widget.dart';
import 'package:flutter/material.dart';

class BracketController {
  static final BracketController _singleton = BracketController._initializer();

  factory BracketController() {
    return _singleton;
  }

  BracketController._initializer();

  ValueNotifier<int> itemsQuantity = ValueNotifier(16);

  BracketItemWidget champion = BracketItemWidget(id: 1);
  List<BracketItemWidget> finalists = [
    BracketItemWidget(id: 2),
    BracketItemWidget(id: 3)
  ];
  List<BracketItemWidget> semiFinalists =
      List.generate(4, (index) => BracketItemWidget(id: index + 4));
  List<BracketItemWidget> roundOfEight =
      List.generate(8, (index) => BracketItemWidget(id: index + 8));
  List<BracketItemWidget> roundOfSixteen = List.generate(
    16,
    (index) => BracketItemWidget(
      id: index + 16,
      bracketItem: itemsSixteen[index],
    ),
  );

  late List<BracketItemWidget> allItems = [
    champion,
    ...finalists,
    ...semiFinalists,
    ...roundOfEight,
    ...roundOfSixteen
  ];

  // double log2(num x) => log(x) / log(2);

  changeQuantity(int value) {
    itemsQuantity.value = value;
  }

  chooseItem(int id, BracketItem item) {
    var newId = id / 2.floor();
    allItems.firstWhere((element) => element.id == newId).bracketItem = item;
  }

  List<BracketItemWidget> getFirstColumn(int itemsQuantity) {
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

  List<BracketItemWidget> getLastColumn(int itemsQuantity) {
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

List<BracketItem> itemsSixteen = [
  BracketItem(title: 'Flamengo'),
  BracketItem(title: 'Fluminense'),
  BracketItem(title: 'Vasco'),
  BracketItem(title: 'Botafogo'),
  BracketItem(title: 'Cruzeiro'),
  BracketItem(title: 'Atletico-MG'),
  BracketItem(title: 'São Paulo'),
  BracketItem(title: 'Corinthians'),
  BracketItem(title: 'Palmeiras'),
  BracketItem(title: 'Santos'),
  BracketItem(title: 'Bahia'),
  BracketItem(title: 'Vitória'),
  BracketItem(title: 'Grêmio'),
  BracketItem(title: 'Intercional'),
  BracketItem(title: 'Athletico'),
  BracketItem(title: 'Sport'),
];
