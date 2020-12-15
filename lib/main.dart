import 'package:flutter/material.dart';
import 'package:flutter_app_learn/models/route_item.dart';
import 'package:flutter_app_learn/ui/expanded.dart';
import 'package:flutter_app_learn/ui/safe_area.dart';
import 'package:flutter_app_learn/ui/wrap.dart';

const String ROUTE_SAFE_AREA='safe-area-route';
const String ROUTE_EXPANDED='expanded-route';
const String ROUTE_WRAP='wrap-route';
const String ROUTE_OPACITY='opacity';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterWidet',
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
