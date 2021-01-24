import 'package:flutter/material.dart';
import 'package:flutter_app_learn/models/route_item.dart';
import 'package:flutter_app_learn/ui/enhance_tab_bar.dart';
import 'package:flutter_app_learn/ui/expanded.dart';
import 'package:flutter_app_learn/ui/future_builder.dart';
import 'package:flutter_app_learn/ui/opacity.dart';
import 'package:flutter_app_learn/ui/pageview.dart';
import 'package:flutter_app_learn/ui/safe_area.dart';
import 'package:flutter_app_learn/ui/tab_bar.dart';
import 'package:flutter_app_learn/ui/wrap.dart';

const String ROUTE_SAFE_AREA='safeArea-route';
const String ROUTE_EXPANDED='expanded-route';
const String ROUTE_WRAP='wrap-route';
const String ROUTE_OPACITY='opacity-route';
const String ROUTE_FUTURE_BUILDER='futureBuilder-route';
const String ROUTE_PAGE_VIEW='pageView-route';
const String ROUTE_TAB_BAR='tabBar-route';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterWidget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => HomePage());
          case ROUTE_SAFE_AREA:
            return MaterialPageRoute(builder: (context)=>SafeAreaPage());
          case ROUTE_EXPANDED:
            return MaterialPageRoute(builder: (context)=>ExpandedPage());
          case ROUTE_WRAP:
            return MaterialPageRoute(builder: (context)=>WrapPage());
         case ROUTE_OPACITY:
            return MaterialPageRoute(builder: (context)=>OpacityPage());
         case ROUTE_FUTURE_BUILDER:
            return MaterialPageRoute(builder: (context)=>FutureBuilderPage());
          case ROUTE_PAGE_VIEW:
            return MaterialPageRoute(builder: (context)=>PageViewPage());
            case ROUTE_TAB_BAR:
            // return MaterialPageRoute(builder: (context)=>EnhanceTabBar());
            return MaterialPageRoute(builder: (context)=>TabBarPage());
          default:
            return MaterialPageRoute(builder: (context) => HomePage());
        }
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final List<RouteItem> routes = [
    RouteItem(ROUTE_SAFE_AREA, 'SafeArea'),
    RouteItem(ROUTE_EXPANDED, 'Expanded'),
    RouteItem(ROUTE_WRAP, 'Wrap'),
    RouteItem(ROUTE_OPACITY, 'Opacity'),
    RouteItem(ROUTE_FUTURE_BUILDER, 'FutureBuilder'),
    RouteItem(ROUTE_PAGE_VIEW, 'PageView'),
    RouteItem(ROUTE_TAB_BAR, 'TabBar'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('小控件列表'),
      ),
      body: ListView.builder(
          itemCount: routes.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  title: Text(routes[index].routeTitle),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).pushNamed(routes[index].routeName);
                  },
                ),
                Divider(),
              ],
            );
          }),
    );
  }
}
