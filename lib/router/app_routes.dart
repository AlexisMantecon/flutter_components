import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    /// MenuOption(
    ///     route: "home",
    ///     name: "Home Screen",
    ///     screen: const HomeScreen(),
    ///     icon: Icons.home_max_sharp),
    MenuOption(
        route: "listview1",
        name: "Listview tipo 1",
        screen: const ListView1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: "listview2",
        name: "Listview tipo 2",
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOption(
        route: "alert",
        name: "Alertas",
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: "card",
        name: "Card Screen",
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
      route: "Avatar",
      name: "Circle Avatar",
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle_outlined,
    ),
    MenuOption(
      route: "Animated",
      name: "Animated Screen",
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline_rounded,
    ),
    MenuOption(
      route: "Inputs",
      name: "Text Inputs",
      screen: const InputsScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOption(
      route: "Slider",
      name: "Slider & Checks",
      screen: const SliderScreen(),
      icon: Icons.slow_motion_video_outlined,
    ),
    MenuOption(
      route: "listviewBuilder",
      name: "InfiniteScroll & Pull to refresh",
      screen: const ListViewBuilderScreen(),
      icon: Icons.build_circle_outlined,
    )
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});

    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }

    return appRoutes;
  }

  /// static Map<String, Widget Function(BuildContext)> routes = {
  ///   'home': (BuildContext context) => const HomeScreen(),
  ///   'listview1': (BuildContext context) => const ListView1Screen(),
  ///   'listview2': (BuildContext context) => const ListView2Screen(),
  ///   'alert': (BuildContext context) => const AlertScreen(),
  ///   'card': (BuildContext context) => const CardScreen()
  /// };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
