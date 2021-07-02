import 'package:bracket/src/model/bracket_item.dart';
import 'package:bracket/src/widgets/bracket_item_widget.dart';
import 'package:flutter/material.dart';

class ConfrontWidget extends StatefulWidget {
  BracketItem element1;
  BracketItem element2;
  BracketItem? choosenElement;
  bool isChoosenElement1 = false;
  bool isChoosenElement2 = false;

  ConfrontWidget(this.element1, this.element2);

  @override
  _ConfrontWidgetState createState() => _ConfrontWidgetState();
}

class _ConfrontWidgetState extends State<ConfrontWidget> {
  void chooseElement(BracketItem element) {
    setState(() {
      widget.choosenElement = element;
      if (element == widget.element1) {
        widget.isChoosenElement1 = !widget.isChoosenElement1;
        widget.isChoosenElement2 = false;
      } else {
        widget.isChoosenElement2 = !widget.isChoosenElement2;
        widget.isChoosenElement1 = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            children: [
              BracketItemWidget(
                widget.element1,
                chooseElement,
                widget.isChoosenElement1,
              ),
              BracketItemWidget(
                widget.element2,
                chooseElement,
                widget.isChoosenElement2,
              ),
            ],
          ),
        ),
        Expanded(
          child: BracketItemWidget(
              widget.choosenElement ?? BracketItem(), chooseElement, false),
        )
      ],
    );
  }
}
