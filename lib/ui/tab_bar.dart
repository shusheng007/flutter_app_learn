import 'dart:developer';

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
    return _TabBarView();
  }
}

class _TabBarView extends StatelessWidget {
  final tabs = <Tab>[
    Tab(
      text: '第一页',
    ),
    Tab(
      icon: Icon(Icons.add_alert_rounded),
    ),
    Tab(
      icon: Icon(Icons.accessibility_rounded),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
       child:
       Builder(
        builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              log('${tabController.index}');
            }
          });

          return Scaffold(
            appBar: AppBar(
              title: Text('TabBar'),
              bottom: TabBar(
                tabs: tabs,
              ),
            ),
            // bottomNavigationBar:TabBar(
            //   tabs: tabs,
            // ) ,
            body: TabBarView(children: [
              Icon(Icons.supervised_user_circle_rounded),
              Icon(Icons.add_alert_rounded),
              Icon(Icons.accessibility_rounded),
            ]),
          );
        },
      ),
    );
  }
}
