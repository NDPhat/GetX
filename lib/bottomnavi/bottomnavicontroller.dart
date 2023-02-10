import 'package:get/get.dart';
class BottomNaviController extends GetxController{
  var index=0;
  changeIndex(int value)
  {
    index=value;
    update();
  }
}