import 'package:bracket/src/model/bracket_item.dart';
import 'package:bracket/src/util/MediaQueryInfo.dart';
import 'package:bracket/src/widgets/confront_widget.dart';
import 'package:flutter/material.dart';

class BracketScreen extends StatefulWidget {
  @override
  _BracketScreenState createState() => _BracketScreenState();
}

class _BracketScreenState extends State<BracketScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQueryInfo.getWidth(context) / 2,
      child: ListView(
        children: [
          ConfrontWidget(
            BracketItem(title: 'teste1'),
            BracketItem(title: 'teste2'),
          ),
          ConfrontWidget(
            BracketItem(title: 'teste3'),
            BracketItem(title: 'teste4'),
          ),
        ],
      ),
    );
  }
}
