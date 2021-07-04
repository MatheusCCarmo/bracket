import 'dart:math';

import 'package:bracket/src/controllers/bracket_controller.dart';
import 'package:bracket/src/controllers/bracket_item_controller.dart';
import 'package:bracket/src/model/bracket_item.dart';
import 'package:bracket/src/util/math_functions.dart';
import 'package:bracket/src/util/media_query_info.dart';
import 'package:bracket/src/widgets/bracket_champion_widget.dart';
import 'package:bracket/src/widgets/bracket_item_widget.dart';
import 'package:bracket/src/widgets/confront_widget.dart';
import 'package:bracket/src/widgets/confronts_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BracketScreen extends StatelessWidget {
  final int itemsQuantity;
  late final int rowQuantity;

  BracketScreen({Key? key, required this.itemsQuantity}) : super(key: key) {
    rowQuantity = (MathFunctions.log2(itemsQuantity).toInt() * 2) + 1;
  }

  final bracketController = BracketController.instance;

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      constrained: false,
      child: Container(
        width: (MediaQueryInfo.getWidth(context) * 3),
        height: (MediaQueryInfo.getHeight(context) * 2),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: rowQuantity,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('ts'),
                Text('tsa'),
              ],
            );
          },
        ),
      ),
    );
  }
}
