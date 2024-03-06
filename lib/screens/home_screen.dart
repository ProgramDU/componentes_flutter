import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/image_screen.dart';
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
              leading: IconTheme(data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.input),),
              title: Text('Entradas',
              style:  Theme.of(context).textTheme.headlineLarge,
              ),
              
              subtitle: Text("Diferentes widgets para entradas del flutter",
              style: AppTheme.lightTheme.textTheme.bodyMedium,
              ),
              // ejemplo de opciones de CIRCULOS :3
              // trailing: const CircularProgressIndicator(
              //   value: 0.4,
              //   color:Color.fromARGB(255, 157, 206, 
              //   backgroundColor: Colors.redAccent,
              //   strokeWidth: 12,
              // ),
              
              onTap: () {
                final ruta1 = MaterialPageRoute(builder: (context){
                  return const InputScreen();
                });
                Navigator.push(context, ruta1);
              },
            ),
            const Divider(),
            ListTile(
              leading: IconTheme(data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.list_alt),),
              title: Text('ListView.builder',
                style:  Theme.of(context).textTheme.headlineLarge,
                ),
              
              subtitle:  Text("Scroll infinito",
               style: AppTheme.lightTheme.textTheme.bodyMedium,),
             
              onTap: () {
                final ruta2 = MaterialPageRoute(builder: (context){
                  return const InfiniteListScreen();
                });
                Navigator.push(context, ruta2);
              },
            ),
            const Divider(),
            ListTile(
              leading: IconTheme(data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.notification_add),),
              title: Text('Notificaciones',
              style:  Theme.of(context).textTheme.headlineLarge,),
              
              subtitle: Text("Creacion de notificaciones",
              style: AppTheme.lightTheme.textTheme.bodyMedium,),
              
              
              onTap: () {
                final ruta3 = MaterialPageRoute(builder: (context){
                  return const NotificationScreen();
                });
                Navigator.push(context, ruta3);
              },
            ),
            ListTile(
              leading: IconTheme(data: AppTheme.lightTheme.iconTheme, 
              child: const Icon(Icons.image),),
              title: Text( 'imagenes',
              style: AppTheme.lightTheme.textTheme.headlineLarge,),
              
              onTap: () {
                final ruta4 = MaterialPageRoute(builder: (context){
                  return const ImagesScreen();
                });
                Navigator.push(context, ruta4);
              },
            ),
          ],
          )
      );
  }
}