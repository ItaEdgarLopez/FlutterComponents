import 'package:components/models/models.dart';
import 'package:components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
   /*  MenuOption(
        Route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home_filled), */
    MenuOption(
        Route: 'listview1',
        name: 'Listview tipo 1',
        screen: const ListViewScreen(),
        icon: Icons.list_alt),
    MenuOption(
        Route: 'listview2',
        name: 'Listview tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOption(
        Route: 'alert',
        name: 'Alerta',
        screen: const AlertScreen(),
        icon: Icons.abc_rounded),
    MenuOption(
        Route: 'card',
        name: 'card',
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
        MenuOption(
        Route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined
        ),
         MenuOption(
        Route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded
        ),
            MenuOption(
        Route: 'inputs',
        name: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_outlined
        ),
        MenuOption(
        Route: 'slider',
        name: 'slider and checcks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video
        ),
         MenuOption(
        Route: 'listviewbuilder',
        name: 'InfiniteScrol',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined
        ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home': (BuildContext context ) => const HomeScreen() });

    for (final option in menuOptions) {
      appRoutes.addAll({
        option.Route: (BuildContext context) => option.screen,
      });
    }

    return appRoutes;
  }

  /*  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListViewScreen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
