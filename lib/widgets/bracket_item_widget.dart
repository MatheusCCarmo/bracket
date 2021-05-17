import 'package:bracket/model/bracket_item.dart';
import 'package:flutter/material.dart';

class BracketItemWidget extends StatelessWidget {
  BracketItem bracketItem;

  BracketItemWidget(this.bracketItem);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black26),
        ),
        child: Center(
          child: Text(bracketItem.title),
        ),
      ),
      onTap: () {},
    );
  }
}
