import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_learn/ui/common/common.dart';

class FutureBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilder'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            buildDescriptionWidget('FutureBuilder使用Future作为数据,当获取到数据后刷新UI\n' +
                    '1. 使用initialData作为初始的数据\n2.不设置初始数据'),
            SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              height: 120,
              alignment: Alignment.center,
              color: Colors.green,
              child: FutureBuilder<String>(
                  future: _getFutureData(),
                  initialData: '请稍安勿躁...',
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    return Text(
                      snapshot.data,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    );
                  }),
            ),
            Container(
              width: double.infinity,
              height: 120,
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              color: Colors.red,
              child: FutureBuilder(
                  future: _getFutureData(),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.hasData) {
                      return Text(
                        snapshot.data,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      );
                    }
                    return CircularProgressIndicator();
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> _getFutureData() {
    return Future.delayed(Duration(seconds: 3), () {
      return '对不起，我来迟了';
    });
  }
}
