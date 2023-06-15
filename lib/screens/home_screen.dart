import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final menuOptions = AppRoutes.menuOptions;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes de Flutter")
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary),
          title: Text(menuOptions[index].name),
          onTap: (){
            /// final route = MaterialPageRoute(builder: (context) => ListView1Screen());
            /// Navigator.pushName(context, route);
            Navigator.pushNamed(context, menuOptions[index].route);
          },), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOptions.length),
    );
  }
}