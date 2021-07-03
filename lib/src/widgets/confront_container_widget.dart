import 'package:bracket/src/model/bracket_item.dart';
import 'package:flutter/material.dart';

import 'confront_widget.dart';

class ConfrontContainerWidget extends StatelessWidget {
  final int confrontsCount;

  const ConfrontContainerWidget({Key? key, required this.confrontsCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      child: ListView.builder(
        itemCount: confrontsCount,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            child: ConfrontWidget(
              BracketItem(),
              BracketItem(),
            ),
          );
        },
      ),
    );
  }
}
