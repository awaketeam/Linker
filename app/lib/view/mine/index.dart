import 'package:flutter/material.dart';

class MinePage extends StatelessWidget {
  const MinePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '我的页面',
          ),
          OutlineButton(
            child: Text("开发者选项"),
            onPressed: () {
              Navigator.pushNamed(context, "developer");
            },
          ),
        ],
      ),
    ));
  }
}
