import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:componentes/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final routes = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('hola'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(routes[index].name),
          leading: Icon(routes[index].icon, color: AppTheme.primary,),
          onTap: (){
            Navigator.pushNamed(context, routes[index].route);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: routes.length
      ),
    );
  }
}