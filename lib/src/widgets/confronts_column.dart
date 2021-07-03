import 'package:bracket/src/widgets/confront_widget.dart';
import 'package:flutter/material.dart';

class ConfrontsColumn extends StatelessWidget {
  final List<ConfrontWidget> confronts;

  const ConfrontsColumn({Key? key, required this.confronts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: confronts,
    );
  }
}
