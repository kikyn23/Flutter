import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    // MenuOption(
    //   route: 'home',
    //   icon: Icons.home,
    //   name: 'Home Screen',
    //   screen: const HomeScreen(),
    // ),
    MenuOption(
      route: 'listview1',
      icon: Icons.list_sharp,
      name: 'List View 1',
      screen: const Listview1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.living_outlined,
      name: 'List View 2',
      screen: const Listview2Screen(),
    ),
    MenuOption(
      route: 'alertscreen',
      icon: Icons.access_alarm,
      name: 'Alert Screen',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'cardscreen',
      icon: Icons.car_crash,
      name: 'Card Screen',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.supervised_user_circle_outlined,
      name: 'Circle Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.play_circle_outline_rounded,
      name: 'Animated Container',
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: 'inputs',
      icon: Icons.input_rounded,
      name: 'Text inputs',
      screen: const InputsScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> gerAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

/*   static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
