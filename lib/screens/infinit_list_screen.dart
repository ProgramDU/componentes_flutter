import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/home_screen.dart';
import 'package:practica3_componentes/screens/image_screen.dart';
import 'package:practica3_componentes/screens/input_screen.dart';
import 'package:practica3_componentes/screens/notification_screen.dart';
import 'package:practica3_componentes/theme/app_theme.dart';

class InfiniteListScreen extends StatefulWidget {
  const InfiniteListScreen({super.key});

  @override
  State<InfiniteListScreen> createState() => _InfiniteListScreenState();
}

class _InfiniteListScreenState extends State<InfiniteListScreen> {
  int selectedIndex = 1;

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
    return  Scaffold(
      appBar: AppBar( title: const Text('Data Screen')
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