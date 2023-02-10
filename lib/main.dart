import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/bottomnavi/dashboard.dart';
import 'package:getx/statevsroute/page3.dart';
import 'package:getx/statevsroute/pagestate.dart';
import 'package:getx/statevsroute/sum.dart';
import 'statevsroute/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyDashBoard(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/page3', page: () => Page3()),
        GetPage(name: '/', page: () => MyDashBoard())
      ],
    );
  }
}
