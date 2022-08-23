import 'package:flutter/material.dart';

import '../../app/app_cubit.dart';
import '../../cour/app_prefs.dart';
import '../src/theme_manager.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));
    final appTheme = AppCubit.get(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        controller: controller,
        children: [
          ThemeModeWidget(),
          Wrap(children: [
            ...List.generate(getSystemDarkAccentColor.length, (index) {
              final color = currentThemeMode == ThemeMode.light
                  ? getSystemLightAccentColor[index]
                  : getSystemDarkAccentColor[index];
              return Tooltip(
                message: getAccentColorNames[index],
                child: _buildColorBlock(appTheme, color, index),
              );
            }),
          ]),
        ],
      ),
    );
  }

  Widget _buildColorBlock(AppCubit appTheme, Color color, int index) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextButton(
        onPressed: () => appTheme.changeApplicationAccent(index),
        style: TextButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          backgroundColor: color,
        ),
        child: Container(
          height: 40,
          width: 40,
          alignment: Alignment.center,
          child: accentColor == color
              ? const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 22.0,
                )
              : null,
        ),
      ),
    );
  }
}

class ThemeModeWidget extends StatelessWidget {
  const ThemeModeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppCubit appTheme = AppCubit.get(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: ThemeMode.values.map((item) {
        final mode = item;
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: RadioListTile(
            groupValue: mode,
            value: currentThemeMode,
            onChanged: (value) => appTheme.changeApplicationMode(mode),
            title: Text('$mode'.replaceAll('ThemeMode.', '')),
          ),
        );
      }).toList(),
    );
  }
}
