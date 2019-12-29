import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:app/model/network.dart';

class DevNetworkPage extends StatelessWidget {
  const DevNetworkPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("网络模块"),
        ),
        body: Center(
          child: Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    '/v1/chain/get_info 返回信息',
                  ),
                  DeveloperList(),
                ],
              ),
            ),
          ),
        ));
  }
}

Future<String> mockNetworkData() async {
  Network network = Network();
  Response response =
      await network.get("http://openapi.eos.ren/v1/chain/get_info");
  return response.data.toString();
}

class DeveloperList extends StatefulWidget {
  DeveloperList({Key key}) : super(key: key);

  @override
  _DeveloperListState createState() => _DeveloperListState();
}

class _DeveloperListState extends State<DeveloperList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<String>(
        future: mockNetworkData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          // 请求已结束
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              // 请求失败，显示错误
              return Text("Error: ${snapshot.error}");
            } else {
              // 请求成功，显示数据
              return Text("Contents: ${snapshot.data}");
            }
          } else {
            // 请求未结束，显示loading
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
