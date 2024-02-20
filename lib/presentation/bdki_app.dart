// ignore_for_file: must_call_super

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../app/routes/route_page.dart';

class BdkiApp extends StatefulWidget {
  const BdkiApp({super.key});

  @override
  State<BdkiApp> createState() => _BdkiAppState();

}

class _BdkiAppState extends State<BdkiApp> {
 

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return GetMaterialApp(
      navigatorKey: Get.key,
      //localizationsDelegates: AppLocalizations.localizationsDelegates,
      //supportedLocales: AppLocalizations.supportedLocales,
      //locale: _locale,
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesPage.init,
      getPages: RoutesPage.routes,
      //themeMode: BoxStorage().getThemeMode(),
    );
  }

}