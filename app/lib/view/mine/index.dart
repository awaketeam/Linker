import 'package:app/db/student_entity.dao.dart';
import 'package:app/db/student_entity.dart';
import 'package:flutter/material.dart';
import 'package:yun_dao/db_manager.dart';

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
                '我的界面',
              ),
              OutlineButton(
                child: Text("插入数据库"),
                onPressed: () {
                      StudentEntityDao.insert(StudentEntity(name: "张三2", age: 12));
                },
              ),
              OutlineButton(
                child: Text("查询"),
                onPressed: () {
                  _query();
                },
              )
            ],
          ),
        ));
  }


  void _query() async {
    List list = await StudentEntityDao.queryAll();
    for(StudentEntity item in list){
      print("找到名字:" + item.name );
    }
  }


}