import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Expanded一般用在Column或者Row中，使被包裹的控件按比例占据尽可能多的空间'),
            Text('1. 当只有一个Expanded控件时，一般不设置其flex属性，它占据剩余的所有空间'),
            Text('2. 当有多个Expanded控件时，通过其flex属性来设置他们直接的比例'),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 50,
                  ),
                ),
                Container(
                  color: Colors.green,
                  height: 50,
                  width: 50,
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    height: 50,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.orange,
                    height: 50,
                    width: 1000, //宽度已经失效
                  ),
                ),
                Container(
                  color: Colors.green,
                  height: 50,
                  width: 50,
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
