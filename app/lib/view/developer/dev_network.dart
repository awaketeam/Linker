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
                  NetworkTest(path: "http://openapi.eos.ren/v1/chain/get_info"),
                  Text(
                    '错误请求 返回信息',
                  ),
                  NetworkTest(
                      path: "http://openapi.eos.r1en/v1/chain/get_info"),
                ],
              ),
            ),
          ),
        ));
  }
}

Future<String> mockNetworkData(String path) async {
  Network network = Network();
  Response response = await network.get(path);
  return response.data.toString();
}

class NetworkTest extends StatefulWidget {
  String path;
  NetworkTest({Key key, this.path}) : super(key: key);

  @override
  _NetworkTestState createState() => _NetworkTestState(path: path);
}

class _NetworkTestState extends State<NetworkTest> {
  String path;

  _NetworkTestState({this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<String>(
        future: mockNetworkData(path),
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
