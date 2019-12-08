import 'package:flutter/material.dart';

class ImportWalletPage extends StatelessWidget {
  const ImportWalletPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导入钱包"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '导入钱包页面',
            ),
          ],
        ),
      )
    );
  }
}