import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  // ignore: non_constant_identifier_names
  final String Route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption(
      // ignore: non_constant_identifier_names
      {required this.Route,
      required this.icon,
      required this.name,
      required this.screen});
}
