import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/bottomnavi/bottomnavicontroller.dart';
import 'package:getx/bottomnavi/users.dart';
import 'package:getx/statevsroute/pagestate.dart';
import 'animated.dart';
import 'mess.dart';

class MyDashBoard extends StatelessWidget {
  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNaviController>(
      init:BottomNaviController() ,
      builder: (controller) {
        return Scaffold(
            body: SafeArea(child: IndexedStack(
              index: controller.index,
              children: [
                PageState(),
                UsersPage(),
                MessagesPage(),
              ],
            )),
            bottomNavigationBar: CustomAnimatedBottomBar(
              containerHeight: 70,
              backgroundColor: Colors.white,
              selectedIndex: controller.index,
              showElevation: true,
              itemCornerRadius: 24,
              curve: Curves.easeIn,
              onItemSelected: controller.changeIndex,
              items: <BottomNavyBarItem>[
                BottomNavyBarItem(
                  icon: Icon(Icons.apps),
                  title: Text('Home'),
                  activeColor: Colors.green,
                  inactiveColor: _inactiveColor,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.people),
                  title: Text('Users'),
                  activeColor: Colors.purpleAccent,
                  inactiveColor: _inactiveColor,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.message),
                  title: Text(
                    'Messages ',
                  ),
                  activeColor: Colors.pink,
                  inactiveColor: _inactiveColor,
                  textAlign: TextAlign.center,
                ),
              ],
            )
        );
      },
    );
  }

}