import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black45,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Text(
                'Wrap 可以理解为可换行的row或者column。如果我们向一个宽度固定的row添加很多控件则会溢出，但使用wrap却可以自动换行\n'+
                    '1. 横向换行\n 2. 纵向换列',
                style: TextStyle(fontSize: 15, height: 1.5),
              ),

            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              color: Colors.lightBlueAccent,
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 1.0, // gap between lines
                children: <Widget>[
                  Chip(
                    avatar: CircleAvatar(
                        backgroundColor: Colors.blue.shade900, child: Text('MV')),
                    label: Text('美女如云'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                        backgroundColor: Colors.blue.shade900, child: Text('CF')),
                    label: Text('财富无限'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                        backgroundColor: Colors.blue.shade900, child: Text('ZY')),
                    label: Text('终极自由'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                        backgroundColor: Colors.blue.shade900, child: Text('ZY')),
                    label: Text('马克思主义'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                        backgroundColor: Colors.blue.shade900, child: Text('SB')),
                    label: Text('毛泽东思想'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              color: Colors.greenAccent,
              height: 180,
              width: double.infinity,
              child: Wrap(
                direction: Axis.vertical,
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 10.0, // gap between lines
                children: <Widget>[
                  Chip(
                    avatar: CircleAvatar(
                        backgroundColor: Colors.blue.shade900, child: Text('MV')),
                    label: Text('美女如云'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                        backgroundColor: Colors.blue.shade900, child: Text('CF')),
                    label: Text('财富无限'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                        backgroundColor: Colors.blue.shade900, child: Text('ZY')),
                    label: Text('终极自由'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                        backgroundColor: Colors.blue.shade900, child: Text('ZY')),
                    label: Text('马克思主义'),
                  ),
                  Chip(
                    avatar: CircleAvatar(
                        backgroundColor: Colors.blue.shade900, child: Text('SB')),
                    label: Text('毛泽东思想'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
