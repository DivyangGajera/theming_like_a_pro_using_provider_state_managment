import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theming_like_a_pro/home_screen.dart';
import 'package:theming_like_a_pro/theme/theme_constants.dart';
import 'package:theming_like_a_pro/theme/theme_manager.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

ThemeManager themeManager = ThemeManager();

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ThemeManager(),
      builder: (context, child) {
        return Consumer<ThemeManager>(
          builder: (context, value, child) {
            return MaterialApp(
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: value.getThemeMode,
              debugShowCheckedModeBanner: false,
              home: const HomeScreen(),
            );
          },
        );
      },
    );
  }
}
