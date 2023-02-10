import 'dart:math';

import 'package:flutter/material.dart';
import 'package:getx/statevsroute/sum.dart';

import 'controller.dart';
import 'package:get/get.dart';
class PageState extends StatelessWidget {
  PageState({Key? key}) : super(key: key);

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Text('value1'),
                    IconButton(
                        onPressed: () {
                          myController.decrementValue1();
                        },
                        icon: Icon(Icons.minimize_outlined)),
                    Obx(() => Text("${myController.value1.toString()}")),
                    IconButton(
                        onPressed: () {
                          myController.incrementValue1();
                        },
                        icon: Icon(Icons.add)),
                  ],
                ),
                Row(
                  children: [
                    Text('value2'),
                    IconButton(
                        onPressed: () {
                          myController.decrementValue2();
                        },
                        icon: Icon(Icons.minimize_outlined)),
                    Obx(() => Text("${myController.value2.toString()}")),
                    IconButton(
                        onPressed: () {
                          myController.incrementValue2();
                        },
                        icon: Icon(Icons.add)),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.to(() => Sum(),
                          arguments: {
                            'price': Random().nextInt(1000).toString()
                          });
                    },
                    child: Text('Sum')),
                ElevatedButton(
                    onPressed: () => Get.toNamed('/page3'),
                    child: Text('page 3')),
              ])),
    );
  }
}