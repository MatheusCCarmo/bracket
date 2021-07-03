import 'package:bracket/src/controllers/bracket_controller.dart';
import 'package:bracket/src/screens/bracket_screen.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final bracketController = BracketController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bracket'),
        actions: [
          TextButton(
            onPressed: () {
              bracketController.changeQuantity(4);
            },
            child: Text(
              '4',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              bracketController.changeQuantity(8);
            },
            child: Text(
              '8',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: BracketScreen(itemsQuantity: bracketController.itemsQuantity.value),
    );
  }
}
