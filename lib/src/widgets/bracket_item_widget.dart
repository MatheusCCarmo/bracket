import 'package:bracket/src/controllers/bracket_item_controller.dart';
import 'package:bracket/src/controllers/confront_controller.dart';
import 'package:bracket/src/model/bracket_item.dart';
import 'package:flutter/material.dart';

class BracketItemWidget extends StatelessWidget {
  final BracketItem bracketItem;
  final ConfrontController confrontController;
  final BracketItemController bracketItemController;

  BracketItemWidget(
    this.bracketItem,
    this.confrontController,
    this.bracketItemController,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ValueListenableBuilder<bool>(
        valueListenable: bracketItemController.isChoosen,
        builder: (context, value, child) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            height: 80,
            decoration: BoxDecoration(
              color: value ? Colors.blue : Colors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.black26),
            ),
            child: Center(
              child: Text(bracketItem.title ?? ''),
            ),
          );
        },
      ),
      onTap: () {
        confrontController.chooseItem(bracketItem);
      },
    );
  }
}
