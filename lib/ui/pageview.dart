import 'package:flutter/material.dart';
import 'package:flutter_app_learn/ui/common/common.dart';

class PageViewPage extends StatefulWidget {
  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  PageController _horizontalPageController;
  PageController _verticalPageController;

  final List<Color> colors= <Color>[Colors.red,Colors.green,Colors.blue];

  @override
  void initState() {
    super.initState();
    _horizontalPageController = PageController(
      initialPage: 1,
      viewportFraction: 0.85
    );
    _verticalPageController=PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _horizontalPageController.dispose();
    _verticalPageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            buildDescriptionWidget('PageView可以实现滑动切换页面的功能,\n1.水平切换，初始页为第2页，两边漏出下一页的一部分\n2.垂直切换'),
            Container(
              margin: EdgeInsets.only(top: 25),
              width: double.infinity,
              height: 200,
              color: Colors.grey,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _horizontalPageController,
                children: [
                  _buildPageView(1),
                  _buildPageView(2),
                  _buildPageView(3),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              width: double.infinity,
              height: 200,
              color: Colors.grey,
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: _verticalPageController,
                children: [
                  _buildPageView(1),
                  _buildPageView(2),
                  _buildPageView(3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageView(int number){
    return Container(
      color: colors[number-1],
      alignment: Alignment.center,
      child: Text('第$number页',style: TextStyle(color: Colors.white,fontSize: 20),),
    );
  }
}
