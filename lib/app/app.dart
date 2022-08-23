import 'package:election_app/cour/di.dart' as di;
import 'package:election_app/presentation/landingSection/block/landing_cubit.dart';
import 'package:election_app/presentation/src/src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:size_config/size_config.dart';

import '../cour/app_prefs.dart';
import 'app_cubit.dart';

class MyApp extends StatefulWidget {
  /// private named constructor.
  const MyApp._internal();

  /// single instance -- singleton.
  static const MyApp instance = MyApp._internal();

  /// factory for the class instance
  factory MyApp() => instance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 // final AppPreferences _appPreferences = di.instance<AppPreferences>();

  @override
  void didChangeDependencies() {
    //_appPreferences.getLocal().then((local) => {context.setLocale(local)});

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SizeConfiguration.init(
      mobileMaxWidth: Values.mobileMaxWidth,
      tabletMaxWidth: Values.tabletMaxWidth,
      desktopMaxWidth: Values.desktopMaxWidth,
      builder: (context, orientation, screenType) {
        return BlocProviders(
          child: BlocConsumer<AppCubit, AppState>(
            listener: (context, state) {
              //_appPreferences.getLocal().then((local) => {context.setLocale(local)});
            },
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                //localizationsDelegates: context.localizationDelegates,
                //supportedLocales: context.supportedLocales,
                //locale: context.locale,
                theme: lightTheme(context),
                darkTheme: darkTheme(context),
                themeMode: currentThemeMode,
                onGenerateRoute: RouteGenerator.getRoute,
                initialRoute: Routes.loginRoute,
              );
            },
          ),
        );
      },
    );
  }
}

class BlocProviders extends StatelessWidget {
  final Widget child;

  const BlocProviders({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.instance<AppCubit>()..init()),
        BlocProvider(create: (context) => di.instance<LandingCubit>()..start()),
        // BlocProvider(create: (context) => di.instance<LandingCubit>()..start()),
      ],
      child: child,
    );
  }
}
