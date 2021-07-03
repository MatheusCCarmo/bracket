import 'package:bracket/src/widgets/confront_widget.dart';
import 'package:flutter/cupertino.dart';

class ColumnController extends ChangeNotifier {
  late List<List<ConfrontWidget>> confronts;

  ColumnController({confronts}) : confronts = confronts ?? [];
}
