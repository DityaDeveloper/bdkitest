import 'package:get/get.dart';

import '../../app/routes/route_name.dart';

class SplashScreenController extends GetxController{

  onRedirectToLogin() {
    Future.delayed(const Duration(seconds: 5), () async {
      print('go to login');
      await Get.offAndToNamed(RoutesName.login);
    });
  }


}