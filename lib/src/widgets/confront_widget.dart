import 'package:bracket/src/controllers/bracket_item_controller.dart';
import 'package:bracket/src/controllers/confront_controller.dart';
import 'package:bracket/src/model/bracket_item.dart';
import 'package:bracket/src/widgets/bracket_item_widget.dart';
import 'package:flutter/material.dart';

class ConfrontWidget extends StatelessWidget {
  final BracketItem item1;
  final BracketItem item2;
  late final itemController1;
  late final itemController2;
  late final ConfrontController confrontController;

  ConfrontWidget(this.item1, this.item2) {
    itemController1 = BracketItemController(item1);
    itemController2 = BracketItemController(item2);
    confrontController = ConfrontController(
        item1Controller: itemController1, item2Controller: itemController2);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BracketItemWidget(
              1, item1, confrontController, confrontController.item1Controller),
          BracketItemWidget(
              2, item2, confrontController, confrontController.item2Controller),
        ],
      ),
    );
  }
}
