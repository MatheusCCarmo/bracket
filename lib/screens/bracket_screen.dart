import 'package:bracket/model/bracket_item.dart';
import 'package:bracket/widgets/bracket_item_widget.dart';
import 'package:bracket/widgets/confront_widget.dart';
import 'package:flutter/material.dart';

class bracketScreen extends StatefulWidget {
  @override
  _bracketScreenState createState() => _bracketScreenState();
}

class _bracketScreenState extends State<bracketScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
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
