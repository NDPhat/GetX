import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class Sum extends StatelessWidget {
  Sum({Key? key}) : super(key: key);
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text("${myController.getSum.toString()}")),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('back'))
        ],
      ),
    ));
  }
}
