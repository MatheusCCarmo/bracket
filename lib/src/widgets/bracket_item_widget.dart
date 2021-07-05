import 'package:bracket/src/controllers/bracket_item_controller.dart';
import 'package:bracket/src/controllers/confront_controller.dart';
import 'package:bracket/src/model/bracket_item.dart';
import 'package:flutter/material.dart';

class BracketItemWidget extends StatelessWidget {
  final BracketItem bracketItem;

  BracketItemWidget(
    this.bracketItem,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // child: ValueListenableBuilder<bool>(
      // valueListenable: bracketItemController.isChoosen,
      // builder: (context, value, child) {
      // return
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: 80,
        width: 180,
        decoration: BoxDecoration(
            // color: value ? Colors.blue : Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black26),
            boxShadow: [
              BoxShadow(
                // offset: value ? Offset(1, 1) : Offset(5, 5),
                color: Colors.black12,
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ]),
        child: Center(
          child: Text(bracketItem.title ?? ''),
        ),
      ),
      // },
      // ),
      // onTap: () {
      //   // confrontController.chooseItem(bracketItem);
      // },
    );
  }
}
