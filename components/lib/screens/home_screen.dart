import 'package:components/screens/router/app_routes.dart';
import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de Flutter'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
              title: Text(menuOptions[index].name),
              leading: Icon(menuOptions[index].icon, color: AppTheme.primary),
              onTap: () {
                Navigator.pushNamed(context, menuOptions[index].Route);
              }),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length,
        ));
  }
}
