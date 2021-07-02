import 'package:bracket/src/model/bracket_item.dart';
import 'package:bracket/src/util/MediaQueryInfo.dart';
import 'package:bracket/src/widgets/confront_widget.dart';
import 'package:flutter/material.dart';

class BracketScreen extends StatefulWidget {
  @override
  _BracketScreenState createState() => _BracketScreenState();
}

class _BracketScreenState extends State<BracketScreen> {
  List<ConfrontWidget> confronts = [
    ConfrontWidget(
      BracketItem(title: 'teste'),
      BracketItem(title: 'teste'),
    ),
    ConfrontWidget(
      BracketItem(title: 'teste'),
      BracketItem(title: 'teste'),
    ),
    ConfrontWidget(
      BracketItem(title: 'teste'),
      BracketItem(title: 'teste'),
    ),
    ConfrontWidget(
      BracketItem(title: 'teste'),
      BracketItem(title: 'teste'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      constrained: false,
      child: Container(
        width: (MediaQueryInfo.getWidth(context) / 3) * confronts.length,
        height: (MediaQueryInfo.getHeight(context) / 3) * confronts.length,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: confronts,
        ),
      ),
    );
  }
}
