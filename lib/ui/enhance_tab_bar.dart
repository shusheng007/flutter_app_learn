import 'dart:developer';

import 'package:flutter/material.dart';

/**
 * Copyright (C) 2021 shusheng007
 * 完全享有此软件的著作权
 *
 * @author       shusheng007
 * @createDate   2021/1/24 16:56
 * @description
 */

class EnhanceTabBar extends StatefulWidget {
  @override
  _EnhanceTabBarState createState() => _EnhanceTabBarState();
}

class _EnhanceTabBarState extends State<EnhanceTabBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  // List<Tab> tabs = <Tab>[
  //   Tab(
  //     child: Column(
  //       children: [
  //         Text(
  //           '第一页',
  //           style: TextStyle(fontSize: 14, color: Colors.white, ),
  //         ),
  //         Text(
  //           '我是美女',
  //           style: TextStyle(fontSize: 9,  color:  Colors.white),
  //         ),
  //       ],
  //     ),
  //   ),
  //   Tab(
  //     icon: Icon(Icons.add_alert_rounded),
  //   ),
  //   Tab(
  //     icon: Icon(Icons.accessibility_rounded),
  //   )
  // ];
  int currentIndex=0;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        // Your code goes here.
        // To get index of current tab use tabController.index
        log('${_tabController.index}');
        setState(() {
          currentIndex =_tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var  tabs = <Tab>[
      Tab(
        child: Column(
          children: [
            Text(
              '第一页',
              style: TextStyle(fontSize: 14, color: Colors.white,fontWeight:currentIndex==0? FontWeight.bold: FontWeight.normal),
            ),
            Text(
              '我是美女',
              style: TextStyle(fontSize: 9,  color: currentIndex==0? Colors.white:Colors.black),
            ),
          ],
        ),
      ),
      Tab(
        icon: Icon(Icons.add_alert_rounded),
      ),
      Tab(
        icon: Icon(Icons.accessibility_rounded),
      )
    ];
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: tabs,
          controller: _tabController,
          indicatorColor:Colors.transparent ,
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        Icon(Icons.supervised_user_circle_rounded),
        Icon(Icons.add_alert_rounded),
        Icon(Icons.accessibility_rounded),
      ]),
    );

/*    return DefaultTabController(
      length: 3,
      child: Builder(
        builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context);
          int selectIndex=0;
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              // Your code goes here.
              // To get index of current tab use tabController.index
              log('${tabController.index}');
              setState(() {
                selectIndex=tabController.index;
              });
            }
          });

          return Scaffold(
            appBar: AppBar(
              title: Text('TabBar'),
              bottom: TabBar(
                tabs: [
                  Column(
                    children: [
                      Text(
                        '第一页',
                        style: TextStyle(fontSize: 14,color: selectIndex==0?Colors.white:Colors.black),
                      ),
                      Text(
                        '我是美女',
                        style: TextStyle(fontSize: 9, color: selectIndex==0?Colors.orange:Colors.grey),
                      ),
                    ],
                  ),
                  Tab(
                    icon: Icon(Icons.add_alert_rounded),
                  ),
                  Tab(
                    icon: Icon(Icons.accessibility_rounded),
                  )
                ],
                // labelColor: Colors.black,
                // unselectedLabelColor: Colors.white,
                indicatorColor:Colors.transparent ,
              ),
            ),
            body: TabBarView(children: [
              Icon(Icons.supervised_user_circle_rounded),
              Icon(Icons.add_alert_rounded),
              Icon(Icons.accessibility_rounded),
            ]),
          );
        },
      ),
    );*/
  }
}
