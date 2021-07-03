import 'package:bracket/src/controllers/bracket_item_controller.dart';
import 'package:bracket/src/model/bracket_item.dart';
import 'package:bracket/src/util/MediaQueryInfo.dart';
import 'package:bracket/src/widgets/bracket_champion_widget.dart';
import 'package:bracket/src/widgets/bracket_item_widget.dart';
import 'package:bracket/src/widgets/confront_container_widget.dart';
import 'package:bracket/src/widgets/confront_widget.dart';
import 'package:bracket/src/widgets/confronts_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BracketScreen extends StatefulWidget {
  final int itemsQuantity;

  const BracketScreen({Key? key, required this.itemsQuantity})
      : super(key: key);

  @override
  _BracketScreenState createState() => _BracketScreenState();
}

class _BracketScreenState extends State<BracketScreen> {
  late final List<ConfrontWidget> confronts;

  @override
  void initState() {
    confronts = [
      ConfrontWidget(
        BracketItem(),
        BracketItem(),
      ),
      ConfrontWidget(
        BracketItem(),
        BracketItem(),
      ),
      ConfrontWidget(
        BracketItem(),
        BracketItem(),
      ),
      ConfrontWidget(
        BracketItem(),
        BracketItem(),
      ),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      constrained: false,
      child: Container(
        width: (MediaQueryInfo.getWidth(context) / 2) * confronts.length,
        height: (MediaQueryInfo.getHeight(context) / 2) * confronts.length,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ConfrontWidget(
                    BracketItem(),
                    BracketItem(),
                  ),
                  ConfrontWidget(
                    BracketItem(),
                    BracketItem(),
                  ),
                  ConfrontWidget(
                    BracketItem(),
                    BracketItem(),
                  ),
                  ConfrontWidget(
                    BracketItem(),
                    BracketItem(),
                  ),
                ],
              );
            } else if (index == 1) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ConfrontWidget(
                    BracketItem(),
                    BracketItem(),
                  ),
                  ConfrontWidget(
                    BracketItem(),
                    BracketItem(),
                  ),
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BracketChampionWidget(
                    0,
                    BracketItem(),
                    BracketItemController(
                      BracketItem(),
                    ),
                  ),
                ],
              );
            }
            // if (index == 0) {
            //   return ConfrontContainerWidget(confrontsCount: 4);
            // } else if (index == 1) {
            //   return ConfrontContainerWidget(confrontsCount: 2);
            // } else {
            //   return ConfrontContainerWidget(confrontsCount: 1);
            // }
          },
        ),
      ),
    );
  }
}
