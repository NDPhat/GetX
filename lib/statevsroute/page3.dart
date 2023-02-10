import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('page 3'),
            ElevatedButton(onPressed: () => Get.back(), child: Text('back'))
          ],
        ),
      ),
    );
  }
}
