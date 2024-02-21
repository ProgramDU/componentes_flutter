import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/infinit_list_screen.dart';
import 'package:practica3_componentes/screens/input_screen.dart';
import 'package:practica3_componentes/screens/notification_screen.dart';
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
              onTap: () {
                final ruta1 = MaterialPageRoute(builder: (context){
                  return const InputScreen();
                });
                Navigator.push(context, ruta1);
              },
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
              onTap: () {
                final ruta2 = MaterialPageRoute(builder: (context){
                  return const InfiniteListScreen();
                });
                Navigator.push(context, ruta2);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.accessibility_new),
              title: Text('Notificaciones',
              style:  Theme.of(context).textTheme.headlineLarge,),
              
              subtitle: Text("Creacion de notificaciones",
              style: AppTheme.lightTheme.textTheme.bodyMedium,),
              
              trailing: const Icon(Icons.check),
              onTap: () {
                final ruta3 = MaterialPageRoute(builder: (context){
                  return const NotificationScreen();
                });
                Navigator.push(context, ruta3);
              },
            ),
          ],
          )
      );
  }
}