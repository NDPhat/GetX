import 'package:get/get.dart';

class MyController {
  var value1 = 0.obs;
  var value2 = 0.obs;
  int get getSum => value1.value + value2.value;
  incrementValue1() {
    value1.value++;
  }

  decrementValue1() {
    value1.value--;
  }

  incrementValue2() {
    value2.value++;
  }

  decrementValue2() {
    value2.value--;
  }
}
