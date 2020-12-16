import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SafeAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('SafeArea'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(12, 5, 12, 5),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black45,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            child: Text(
              '由于市面上手机的屏幕各式各样，什么全面屏，刘海屏，水滴屏，打孔屏等等，'
              '所以顶部和底部的UI元素可能被系统遮盖，如果发生了这样的问题就使用：SafeArea',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            '我要完全显示出来',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          )
        ],
      ),
    ));
  }
}
