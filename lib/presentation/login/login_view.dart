import 'package:bankdkitest/gen/assets.gen.dart';
import 'package:bankdkitest/presentation/login/login_controller.dart';
import 'package:floating_draggable_widget/floating_draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/widget/container_gradient.dart';
import '../../app/widget/text_gradient.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final clogin = Get.put(LoginController());
  bool isIndonesian = false;

  @override
  Widget build(BuildContext context) {
    return FloatingDraggableWidget(
      floatingWidget: FloatingActionButton(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0,
        mini: true,
        onPressed: () {},
        child:
            Assets.image.imageJackardHelpcenter.image(height: 130, width: 130),
      ),
      floatingWidgetHeight: 90,
      floatingWidgetWidth: 90,
      dx: 300,
      dy: 700,
      onDeleteWidget: () {
        debugPrint('Widget deleted');
      },
      mainScreenWidget: Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            SizedBox(
              height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 90,
                    child: Transform.scale(
                      scale: 1.3,
                      child: Switch(
                        trackColor: MaterialStateProperty.all(Colors.black12),
                        activeColor: Colors.white.withOpacity(0.4),
                        inactiveThumbColor: Colors.white.withOpacity(0.4),
                        activeThumbImage: AssetImage(
                            Assets.image.iconEnglishLanguage.keyName),
                        inactiveThumbImage: AssetImage(
                            Assets.image.iconIndonesiaLanguage.keyName),
                        value: isIndonesian,
                        onChanged: (value) =>
                            setState(() => isIndonesian = value),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 0,
                                offset: const Offset(
                                    0, 6),
                              ),
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.wallet),
                            Assets.image.imageJackardTextlogo
                                .image(width: 40, height: 20)
                          ],
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  Assets.image.imageMonas.image(width: 300, height: 400),
                  ShaderMask(
                    shaderCallback: (size) => linearGradient,
                    child: const Text(
                      'Explore Jakarta with Jakarta Tourist Pass',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => clogin.onToHomeView(),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: containerGradient1,
                    ),
                  ),
                  GestureDetector(
                      onTap: () => clogin.onToHomeView(),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: containerGradient2,
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
