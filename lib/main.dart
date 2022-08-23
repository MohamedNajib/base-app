import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';
import 'app_bloc_observer.dart';
import 'cour/di.dart' as di;
import 'cour/functions.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  if (kIsWeb || [TargetPlatform.windows, TargetPlatform.android].contains(defaultTargetPlatform)) {
    // SystemTheme.accentColor;
  }
  if (isDesktop) {
    //await flutter_acrylic.Window.initialize();
    await WindowManager.instance.ensureInitialized();
    windowManager.waitUntilReadyToShow().then((_) async {
      await windowManager.setTitleBarStyle(TitleBarStyle.normal, windowButtonVisibility: true);
      await windowManager.setSize(const Size(800, 600));
      await windowManager.setMinimumSize(const Size(800, 600));
      await windowManager.center();
      await windowManager.show();
      //await windowManager.setPreventClose(true);
      //await windowManager.setSkipTaskbar(false);
    });
  }
  BlocOverrides.runZoned(
        () => runApp(MyApp()),
    blocObserver: AppBlocObserver(),
  );

}

