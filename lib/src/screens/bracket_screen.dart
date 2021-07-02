import 'package:bracket/src/model/bracket_item.dart';
import 'package:bracket/src/util/MediaQueryInfo.dart';
import 'package:bracket/src/widgets/confront_widget.dart';
import 'package:flutter/material.dart';

class BracketScreen extends StatefulWidget {
  @override
  _bracketScreenState createState() => _bracketScreenState();
}

class _bracketScreenState extends State<BracketScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQueryInfo.getWidth(context) / 2,
      child: ListView(
        children: [
          ConfrontWidget(new BracketItem(title: 'teste1'),
              new BracketItem(title: 'teste2')),
          ConfrontWidget(new BracketItem(title: 'teste3'),
              new BracketItem(title: 'teste4')),
        ],
      ),
    );
  }
}
