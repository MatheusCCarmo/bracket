import 'package:bracket/src/controllers/bracket_controller.dart';
import 'package:bracket/src/widgets/bracket_item_widget.dart';
import 'package:flutter/material.dart';

class ConfrontsColumn extends StatelessWidget {
  final int index;
  final int rowExtent;
  final int itemsQuantity;
  late BracketController bracketController;

  ConfrontsColumn({
    Key? key,
    required this.index,
    required this.itemsQuantity,
    required this.rowExtent,
  }) : super(key: key) {
    bracketController = BracketController.instance;
  }

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getFirstColumn(itemsQuantity)
            .map(
              (e) => BracketItemWidget(e),
            )
            .toList(),
      );
    } else if (index == 1) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getFirstColumn((itemsQuantity / 2).ceil())
            .map(
              (e) => BracketItemWidget(e),
            )
            .toList(),
      );
    } else if (index == 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getFirstColumn((itemsQuantity / 4).ceil())
            .map(
              (e) => BracketItemWidget(e),
            )
            .toList(),
      );
    } else if (index == rowExtent - 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getLastColumn((itemsQuantity / 4).ceil())
            .map(
              (e) => BracketItemWidget(e),
            )
            .toList(),
      );
    } else if (index == rowExtent - 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getLastColumn((itemsQuantity / 2).ceil())
            .map(
              (e) => BracketItemWidget(e),
            )
            .toList(),
      );
    } else if (index == rowExtent - 1) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getLastColumn((itemsQuantity).ceil())
            .map(
              (e) => BracketItemWidget(e),
            )
            .toList(),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bracketController
            .getLastColumn((itemsQuantity / 8).ceil())
            .map(
              (e) => BracketItemWidget(e),
            )
            .toList(),
      );
    }
  }
}
