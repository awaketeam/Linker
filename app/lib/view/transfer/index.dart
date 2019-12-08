import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("转账"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '转账页面',
            ),
          ],
        ),
      )
    );
  }
}