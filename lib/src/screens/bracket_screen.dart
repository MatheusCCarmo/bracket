import 'dart:math';

import 'package:bracket/src/controllers/bracket_controller.dart';
import 'package:bracket/src/util/math_functions.dart';
import 'package:bracket/src/util/media_query_info.dart';
import 'package:bracket/src/widgets/confronts_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BracketScreen extends StatelessWidget {
  final int itemsQuantity;
  late final int rowExtent;

  BracketScreen({Key? key, required this.itemsQuantity}) : super(key: key) {
    rowExtent = (MathFunctions.log2(itemsQuantity).toInt() * 2) + 1;
  }

  final bracketController = BracketController.instance;

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      constrained: false,
      child: Container(
        width: (MediaQueryInfo.getWidth(context) * 2),
        height: (MediaQueryInfo.getHeight(context) * 0.5),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: rowExtent,
          itemBuilder: (context, index) {
            return ConfrontsColumn(
                index: index,
                rowExtent: rowExtent,
                itemsQuantity: itemsQuantity);
          },
        ),
      ),
    );
  }
}
