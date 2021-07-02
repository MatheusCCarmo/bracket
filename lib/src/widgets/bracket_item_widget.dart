import 'package:bracket/src/model/bracket_item.dart';
import 'package:flutter/material.dart';

class BracketItemWidget extends StatefulWidget {
  BracketItem bracketItem;
  Function chooseElement;
  bool isChoosen;

  BracketItemWidget(
    this.bracketItem,
    this.chooseElement,
    this.isChoosen,
  );

  @override
  _BracketItemWidgetState createState() => _BracketItemWidgetState();
}

class _BracketItemWidgetState extends State<BracketItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: 80,
        decoration: BoxDecoration(
          color: widget.isChoosen ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.black26),
        ),
        child: Center(
          child: Text(widget.bracketItem.title ?? ''),
        ),
      ),
      onTap: () {
        setState(() {
          this.widget.chooseElement(widget.bracketItem);
        });
      },
    );
  }
}
