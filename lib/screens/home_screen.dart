import 'package:flutter/material.dart';

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
              leading: const Icon(Icons.inbox_rounded),
              title: Text('Entradas',
              style:  Theme.of(context).textTheme.headlineLarge,
              ),
              
              subtitle: const Text("Diferentes widgets para entradas del flutter",
              ),
              trailing: const Icon(Icons.military_tech),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.list_alt_rounded),
              title: Text('ListView.builder',
              style:  Theme.of(context).textTheme.headlineLarge,
                ),
              
              subtitle: const Text("Scroll infinito",),
              trailing: const Icon(Icons.arrow_circle_down),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.accessibility_new),
              title: Text('Notificaciones'),
              
              subtitle: Text("Creacion de notificaciones"),
              
              trailing: Icon(Icons.check),
            ),
          ],
          )
      );
  }
}