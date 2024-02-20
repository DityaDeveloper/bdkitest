import 'package:get/get.dart';

class MyHomePageController extends GetxController {

  var counter = 0.obs;


   incrementCounter() {
    counter.value++;
  }
   // print('log : ${counter.value}');

}