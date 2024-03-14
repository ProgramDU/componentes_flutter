import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/image_screen.dart';
import 'package:practica3_componentes/screens/infinit_list_screen.dart';
import 'package:practica3_componentes/screens/input_screen.dart';
import 'package:practica3_componentes/screens/notification_screen.dart';
import 'package:practica3_componentes/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex =0;

 openScreen(int index, BuildContext context){
    setState(() {
      MaterialPageRoute ruta =MaterialPageRoute(builder: (context) => const HomeScreen());
    switch (index){
     case 0: ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
      break;
      case 1:  ruta = MaterialPageRoute(builder: (context) => const InfiniteListScreen());
      break;
      case 2: ruta= MaterialPageRoute(builder: (context) => const InputScreen());
      break;
      case 3:  ruta = MaterialPageRoute(builder: (context) => const NotificationScreen());
      break;
      case 4:  ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
      break;
    }
    selectedIndex = index;
    //print('selectedIndex = $selectedIndex');
    Navigator.push(context, ruta);
    });
}


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
          ),
          bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedIndex,
      backgroundColor: const Color.fromARGB(255, 186, 206, 209),
      unselectedItemColor: const Color.fromARGB(255, 120, 67, 136),
      onTap: (index) => openScreen(index, context),
      items: const[
        
        BottomNavigationBarItem(icon:Icon(Icons.home_max_rounded,
        color: Color.fromARGB(255, 231, 247, 243),),
        label: "Inicio",
        backgroundColor: Color.fromARGB(255, 11, 122, 98)),
        BottomNavigationBarItem(icon: Icon(Icons.data_object, color: Color.fromARGB(255, 235, 245, 242),),
        label: "Datos",
        backgroundColor: Color.fromARGB(255, 37, 134, 130)),
        BottomNavigationBarItem(icon: Icon(Icons.input, color: Color.fromARGB(255, 235, 245, 242),),
        label: "Entradas",
        backgroundColor: Color.fromARGB(255, 37, 134, 130)),

        BottomNavigationBarItem(icon:Icon(Icons.home_max_rounded,
        color: Color.fromARGB(255, 224, 231, 230),),
        label: "Notificaciones",
        backgroundColor: Color.fromARGB(255, 17, 145, 106)),
        BottomNavigationBarItem(icon:Icon(Icons.home_max_rounded,
        color: Color.fromARGB(255, 223, 236, 234),),
        label: "Images",
        backgroundColor: Color.fromARGB(255, 26, 128, 114)),
        BottomNavigationBarItem(icon: Icon(Icons.exit_to_app, color: Color.fromARGB(255, 229, 222, 231),),
        label: "Salir",
        backgroundColor: Color.fromARGB(255, 84, 163, 147)),
      ],
      unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
      ),

      );
  }
}