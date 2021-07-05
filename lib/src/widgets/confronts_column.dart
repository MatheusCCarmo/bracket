import 'package:flutter/material.dart';

class ConfrontsColumn extends StatelessWidget {
  final int index;
  final int rowExtent;
  final int itemsQuantity;

  const ConfrontsColumn({
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
        children:
            List.generate((itemsQuantity / 2).ceil(), (index) => Text('0')),
      );
    } else if (index == 1) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            List.generate((itemsQuantity / 4).ceil(), (index) => Text('0')),
      );
    } else if (index == 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            List.generate((itemsQuantity / 8).ceil(), (index) => Text('0')),
      );
    } else if (index >= (rowExtent / 2).floor() - 1 &&
        index <= (rowExtent / 2).floor() + 1) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Text('0')],
      );
    } else if (index == rowExtent - 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            List.generate((itemsQuantity / 8).ceil(), (index) => Text('0')),
      );
    } else if (index == rowExtent - 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            List.generate((itemsQuantity / 4).ceil(), (index) => Text('0')),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            List.generate((itemsQuantity / 2).ceil(), (index) => Text('0')),
      );
    }
  }
}
