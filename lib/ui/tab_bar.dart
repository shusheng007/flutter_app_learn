import 'package:flutter/material.dart';

/**
 * Copyright (C) 2021 shusheng007
 * 完全享有此软件的著作权
 *
 * @author       shusheng007
 * @createDate   2021/1/18 22:16
 * @description
 */

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.supervised_user_circle_rounded),
              ),
              Tab(
                icon: Icon(Icons.add_alert_rounded),
              ),
              Tab(
                icon: Icon(Icons.accessibility_rounded),
              )
            ]),
          ),
          body:TabBarView(children: [
            Icon(Icons.supervised_user_circle_rounded),
            Icon(Icons.add_alert_rounded),
            Icon(Icons.accessibility_rounded),
          ]),
        ));
  }


}
