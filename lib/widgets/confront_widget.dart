import 'package:bracket/model/bracket_item.dart';
import 'package:bracket/widgets/bracket_item_widget.dart';
import 'package:flutter/material.dart';

class ConfrontWidget extends StatefulWidget {
  BracketItem element1;
  BracketItem element2;

  ConfrontWidget(this.element1, this.element2);

  @override
  _ConfrontWidgetState createState() => _ConfrontWidgetState();
}

class _ConfrontWidgetState extends State<ConfrontWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BracketItemWidget(widget.element1),
        BracketItemWidget(widget.element2),
      ],
    );
  }
}
