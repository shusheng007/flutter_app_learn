import 'package:flutter/material.dart';
import 'package:flutter_app_learn/ui/common/common.dart';

class OpacityPage extends StatefulWidget {
  @override
  _OpacityPageState createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  double _opacityOf2Btn = 1.0;
  double _opacityOfBlueRec = 1.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black45,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            child: Text(
              'Opacity可以设置某个控件的透明度 \n' +
                  '1. 设置opacity为0.0时，达到隐藏控件的效果\n' +
                  '2. 使用AnimatedOpacity可以实现透明度动画',
              style: desTextStyle,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80,
                height: 50,
                color: Colors.green,
              ),
              Opacity(
                opacity: _opacityOf2Btn,
                alwaysIncludeSemantics: false,
                child: Container(
                  width: 80,
                  height: 50,
                  color: Colors.red,
                ),
              ),
              Container(
                width: 80,
                height: 50,
                color: Colors.yellow,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(12),
            width: double.infinity,
            child: RaisedButton(
                child: Text('隐藏红色方块'),
                onPressed: () {
                  setState(() {
                    _opacityOf2Btn = 0.0;
                  });
                }),
          ),
          SizedBox(
            height: 20,
          ),
          AnimatedOpacity(
            opacity: _opacityOfBlueRec,
            duration: Duration(seconds: 3),
            child: Container(
              margin: EdgeInsets.all(12),
              color: Colors.blue,
              width: double.infinity,
              height: 100,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            width: double.infinity,
            child: RaisedButton(
                child: Text('切换蓝色方块可见性'),
                onPressed: () {
                  setState(() {
                    if (_opacityOfBlueRec > 0.01)
                      _opacityOfBlueRec = 0.0;
                    else
                      _opacityOfBlueRec = 1.0;
                  });
                }),
          ),
        ],
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to favorite'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
