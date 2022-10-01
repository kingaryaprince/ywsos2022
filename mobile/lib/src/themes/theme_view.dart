import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mobile/src/themes/themes.dart';
import 'package:mobile/src/themes/themes_controller.dart';

class ThemeView extends GetView<ThemeController> {
  const ThemeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          // Glue the SettingsController to the theme selection DropdownButton.
          //
          // When a user selects a theme from the dropdown list, the
          // SettingsController is updated, which rebuilds the MaterialApp.
          child: Column(children: [
            ElevatedButton(
              onPressed: () {
                controller.changeThemeMode(ThemeMode.dark);
                controller.saveTheme(true);
              },
              child: Text('Dark Theme'),
            ),
            ElevatedButton(
              onPressed: () {
                controller.changeThemeMode(ThemeMode.light);
                controller.saveTheme(false);
              },
              child: Text('Light Theme'),
            ),
          ])),
    );
  }
}
