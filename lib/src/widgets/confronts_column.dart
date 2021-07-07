import 'package:bracket/src/controllers/bracket_controller.dart';
import 'package:flutter/material.dart';

class ConfrontsColumn extends StatelessWidget {
  final int index;
  final int rowExtent;
  final int itemsQuantity;
  final BracketController bracketController = BracketController();

  ConfrontsColumn({
    Key? key,
    required this.index,
    required this.itemsQuantity,
    required this.rowExtent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController.getFirstColumn(itemsQuantity).toList(),
      );
    } else if (index == 1) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getFirstColumn((itemsQuantity / 2).ceil())
            .toList(),
      );
    } else if (index == 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getFirstColumn((itemsQuantity / 4).ceil())
            .toList(),
      );
    } else if (index == 3 && itemsQuantity > 4) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getFirstColumn((itemsQuantity / 8).ceil())
            .toList(),
      );
    } else if (index == rowExtent - 4) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getLastColumn((itemsQuantity / 8).ceil())
            .toList(),
      );
    } else if (index == rowExtent - 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getLastColumn((itemsQuantity / 4).ceil())
            .toList(),
      );
    } else if (index == rowExtent - 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getLastColumn((itemsQuantity / 2).ceil())
            .toList(),
      );
    } else if (index == rowExtent - 1) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            bracketController.getLastColumn((itemsQuantity).ceil()).toList(),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getLastColumn((itemsQuantity / 16).ceil())
            .toList(),
      );
    }
  }
}
