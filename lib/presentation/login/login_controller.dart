import 'package:get/get.dart';

import '../../app/routes/route_name.dart';

class LoginController extends GetxController{

  onToHomeView() {
    Future.delayed(const Duration(seconds: 0), () async {
      await Get.offAndToNamed(RoutesName.home);
    });
  }

}