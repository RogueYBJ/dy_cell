/*
 * @Author Bangjin Yu
 * @Email: 1227169416@qq.com
 * @Address: 梦想小镇互联网村
 * @Date 2019-11-11 19:02:36 Monday
 */

import 'package:file_model/file_util.dart';
import 'package:flutter/material.dart';

class TestModel {
  final String name;
  final int age;
  final double height;

  TestModel({this.name = '', this.age = 0, this.height = 0.0});

  factory TestModel.fromMap(Map data) {
		return TestModel(name:data['name'],age:data['age'],height:data['height']);
	}

}

class TestCell extends StatefulWidget {
  final Function action;
  final int tag;
  const TestCell({Key key, this.action, this.tag}) : super(key: key);

  _TestCell createState() => _TestCell();
}

class _TestCell extends State<TestCell> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FileUtil.filePath = r"/Users/ironman/Documents/flutter/package/dy_cell/lib/model/";
    FileUtil.fromFileName('test').writeAsMap({'name':'yubangjin','age':25,'height':178.5});
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: ()=>widget.action(widget.tag),
      child: new Container(
        height: 100,
        color: Colors.red,
      ),
    );
  }
}
