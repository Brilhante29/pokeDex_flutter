import 'package:flutter/material.dart';
import 'package:project/home/home_bindinds.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'home/get_connect/get_connect_bindings.dart';
import 'home/get_connect/get_connect_page.dart';
import 'home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      theme: CupertinoThemeData(scaffoldBackgroundColor: Colors.white),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: HomeBindinds(),
          children: [
            GetPage(
              name: '/getconnect',
              page: () => GetConnectPage(),
              binding: GetConnectBindings(),
            )
          ],
        )
      ],
    );
  }
}
