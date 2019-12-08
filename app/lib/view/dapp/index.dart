import 'package:flutter/material.dart';

class DAppPage extends StatelessWidget {
  const DAppPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'DApp页面',
            ),
          ],
        ),
      )
    );
  }
}