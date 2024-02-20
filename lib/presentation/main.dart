import 'package:bankdkitest/presentation/bdki_app.dart';
import 'package:catcher/catcher.dart';
import 'package:flutter/material.dart';

import '../app/utilities/catcher_setup.dart';

void runBdkiApp() async {
WidgetsFlutterBinding.ensureInitialized();
Catcher(
    rootWidget: const BdkiApp(),
    debugConfig: CatcherSetup.debug(),
    releaseConfig: CatcherSetup.release(),
    profileConfig: CatcherSetup.debug(),
  );
}

void main() {}