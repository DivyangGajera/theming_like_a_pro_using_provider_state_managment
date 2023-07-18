import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theming_like_a_pro/theme/text_styles.dart';
import 'package:theming_like_a_pro/theme/theme_manager.dart';

class ThemeSelector extends StatelessWidget {
  ThemeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Select App Theme"),
        ),
        body: Consumer<ThemeManager>(
          builder: (context, value, child) {
            return GridView.count(
              padding: EdgeInsets.all(10),
              crossAxisCount: 2,
              children: [
                GestureDetector(
                  onTap: () {
                    value.setTheme = ThemeMode.light;
                    value.setSelectedTheme = 1;
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.bottomLeft,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(
                            width: 3,
                            color: value.getSelectedTheme == 1
                                ? Colors.blue
                                : Colors.black),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://wallpapercave.com/wp/wp8561052.png"),
                            fit: BoxFit.cover)),
                    width: MediaQuery.sizeOf(context).width / 2 - 40,
                    child: Text("Light Theme", style: style1),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    value.setTheme = ThemeMode.dark;
                    value.setSelectedTheme = 2;
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.bottomLeft,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(
                            width: 3,
                            color: value.getSelectedTheme == 2
                                ? Colors.blue
                                : Colors.black),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://c4.wallpaperflare.com/wallpaper/1023/370/544/dark-landscape-lake-hd-wallpaper-preview.jpg"),
                            fit: BoxFit.cover)),
                    width: MediaQuery.sizeOf(context).width / 2 - 40,
                    child: Text("Dark Theme", style: style1),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    value.setTheme = ThemeMode.system;
                    value.setSelectedTheme = 3;
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.bottomLeft,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(
                            width: 3,
                            color: value.getSelectedTheme == 3
                                ? Colors.blue
                                : Colors.black),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://cdn.iconscout.com/icon/free/png-256/free-apple-settings-1-493162.png?f=webp"),
                            fit: BoxFit.cover)),
                    width: MediaQuery.sizeOf(context).width / 2 - 40,
                    child: Text("System Default Theme", style: style1),
                  ),
                ),
              ],
            );
          },
        ));
  }
}
