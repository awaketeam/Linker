import 'package:flutter/material.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("开发者选项"),
        ),
        body: Container(
            child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            ListTile(
              title: Text('网络模块'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, "dev_network");
              },
            ),
            ListTile(
              title: Text('存储模块'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        )));
  }
}
