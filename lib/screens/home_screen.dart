import 'package:flutter/material.dart';
import 'package:practica3_componentes/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de flutter')
        ),
        body: ListView(
          children:  [
            ListTile(
              leading: const Icon(Icons.inbox_rounded,
              color: AppTheme.mainColor),
              title: Text('Entradas',
              style:  Theme.of(context).textTheme.headlineLarge,
              ),
              
              subtitle: Text("Diferentes widgets para entradas del flutter",
              style: AppTheme.lightTheme.textTheme.bodyMedium,
              ),
              trailing: const Icon(Icons.military_tech, color: Colors.amber,),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.list_alt_rounded),
              title: Text('ListView.builder',
              style:  Theme.of(context).textTheme.headlineLarge,
                ),
              
              subtitle:  Text("Scroll infinito",
               style: AppTheme.lightTheme.textTheme.bodyMedium,),
              trailing: const Icon(Icons.arrow_circle_down),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.accessibility_new),
              title: Text('Notificaciones',
              style:  Theme.of(context).textTheme.headlineLarge,),
              
              subtitle: Text("Creacion de notificaciones",
              style: AppTheme.lightTheme.textTheme.bodyMedium,),
              
              trailing: const Icon(Icons.check),
            ),
          ],
          )
      );
  }
}