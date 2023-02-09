import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/sum.dart';
import 'controller.dart';

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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
  MyController myController=Get.put(MyController());

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
                      IconButton(onPressed: (){
                        myController.decrementValue1();
                      }, icon: Icon(Icons.minimize_outlined)),
                      Obx(() => Text("${myController.value1.toString()}")),
                      IconButton(onPressed: (){
                        myController.incrementValue1();
                      }, icon: Icon(Icons.add)),

                    ],
                  ),
                  Row(
                    children: [
                      Text('value2'),
                      IconButton(onPressed: (){
                        myController.decrementValue2();
                      }, icon: Icon(Icons.minimize_outlined)),
                      Obx(() => Text("${myController.value2.toString()}")),
                      IconButton(onPressed: (){
                        myController.incrementValue2();
                      }, icon: Icon(Icons.add)),

                    ],
                  ),
                  ElevatedButton(onPressed: (){
                    Get.to(()=>Sum());
                  }, child: Text('Sum'))
                ])));
  }
}
