// ignore: file_names

import "package:flutter/material.dart";
import "package:google_maps_flutter/google_maps_flutter.dart";
import "package:provider/provider.dart";
import "package:theming_like_a_pro/theme/theme_manager.dart";
import "package:theming_like_a_pro/theme_selector.dart";
import 'package:theming_like_a_pro/theme/wall_design_bg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLightThemeMode = false;

  GoogleMapController? mapController;

  MapType mapType = MapType.terrain;
  // Location location = Location();

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager>(
      builder: (context, value, child) {
        return Scaffold(
            appBar: AppBar(
              title: const Text("Dynamic Theme app"),
              actions: [
                IconButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThemeSelector(),
                        )),
                    icon: Icon(Icons.format_paint))
              ],
            ),
            body: Stack(
              alignment: Alignment.center,
              children: [
                const WallDesign(),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton.outlined(
                          onPressed: () {},
                          icon: Icon(
                            Icons.account_circle,
                            size: 200,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          style: IconButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.background),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const TextField(
                            decoration:
                                InputDecoration(labelText: "Username :")),
                        const SizedBox(
                          height: 50,
                        ),
                        const TextField(
                            decoration:
                                InputDecoration(labelText: "Password :")),
                        const SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
