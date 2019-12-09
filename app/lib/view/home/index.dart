import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '首页',
          ),
          OutlineButton(
            child: Text("导入钱包"),
            onPressed: () {
              Navigator.pushNamed(context, "import_wallet");
            },
          ),
          OutlineButton(
            child: Text("转账"),
            onPressed: () {
              Navigator.pushNamed(context, "transfer");
            },
          )
        ],
      ),
    ));
  }
}
