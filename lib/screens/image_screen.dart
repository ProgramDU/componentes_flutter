import 'package:flutter/material.dart';
import 'package:practica3_componentes/screens/home_screen.dart';
import 'package:practica3_componentes/screens/infinit_list_screen.dart';
import 'package:practica3_componentes/screens/input_screen.dart';
import 'package:practica3_componentes/screens/notification_screen.dart';
import 'package:practica3_componentes/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';


class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});


  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
    int selectedIndex = 4;

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
        title: const Text('Imagenes'),
      ),
      body: ListView(children: [
        imageCard(),
        imageWeb(),
        
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

  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Column(
          children: [
            const Image(image: AssetImage('assets/img/lola.jpg')),
            Container(
              padding: const EdgeInsets.all(30),
              child:  Text('Dos dangos❤', style: AppTheme.lightTheme.textTheme.headlineMedium,)

            )
          ],
        ),
      ) ,
    );
  }
  Stack imageWeb(){
    return Stack(
      children: <Widget>[  
        const Center(
          
            child: CircularProgressIndicator(),
        ),
        Center(child: SizedBox(height:220,width: 300, child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, 
        image: 'data:image/jpeg;base64,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')
        // Image.network()      --mostar imagen de la red 
        )),]
    );
  }
}