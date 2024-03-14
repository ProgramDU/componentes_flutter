

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica3_componentes/screens/data_screen.dart';
import 'package:practica3_componentes/screens/home_screen.dart';
import 'package:practica3_componentes/screens/image_screen.dart';
import 'package:practica3_componentes/screens/infinit_list_screen.dart';
import 'package:practica3_componentes/screens/notification_screen.dart';
import 'package:practica3_componentes/theme/app_theme.dart';


class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  bool valueSwitch= false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0.0;
  int selectedIndex =2;
  int selectedRadioOption = 0; 
  

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
      case 5:  SystemChannels.platform.invokeListMethod('systemNavigator.pop');
      selectedIndex = index;
      break;
    }
    selectedIndex = index;
    //print('selectedIndex = $selectedIndex');
    Navigator.push(context, ruta);
    });
}
  
  // valor para los RadioButton
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           
           entradaTexto(),
           entradaSwitch(),
           entradaSlider(),
           entradaRadio(),
           Text('¿Què usas para correr tus apps de flutter?',
           style: AppTheme.lightTheme.textTheme.headlineMedium,),
           entradasCheck(),


           ElevatedButton(onPressed: () {
                final rutaData = MaterialPageRoute(builder: (context){
                  return const DataScreen();
                });
                Navigator.push(context, rutaData);
              },
               child: const Text('Guardar',
            ),
            ),
            
          ],
        ),
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

  TextField entradaTexto() {
    return TextField(
        decoration: InputDecoration(
          border:  const UnderlineInputBorder(),
          labelText: 'Escribe tu nombre',
          labelStyle: AppTheme.lightTheme.textTheme.headlineLarge
        ),
       );
  }

  Row entradaSwitch(){
    return Row(
      children: <Widget>[
        const FlutterLogo(),
        Text('¿Te gusta Flutter?',
        style: AppTheme.lightTheme.textTheme.headlineLarge,),
        const SizedBox(width: 25.0,),
        Switch(
          value: valueSwitch,
          onChanged: (value){
            setState(() {
              valueSwitch = value;
              print('Estado del switch: $valueSwitch');
            });
          } ,
        ),
      ]
    );
  }

  Column entradaSlider(){
    return Column(
      children: [
        Text('¿que tanto te gusta flutter?', 
        style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          value: valueSlider, 
          activeColor: const Color.fromARGB(255, 11, 199, 183),
          inactiveColor:const Color.fromARGB(255, 213, 191, 214),
          thumbColor: const Color.fromARGB(255, 46, 93, 131),
          divisions: 12,
          label: '${valueSlider.round()}',
        onChanged: (value){
          setState(() {
            valueSlider = value;
            print('Valor del slider: $valueSlider');
          });

        })
      ],
    );
  }
  
  Column entradaRadio(){
    return Column(
      children: [
        Text(
          '¿que prefieres usar para desarrollo movil?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text('kotlin',
          style: AppTheme.lightTheme.textTheme.headlineMedium,),
          leading: Transform.scale(
            scale: 1.0,
            child: Radio(value: 1,
            groupValue: selectedRadioOption,
            onChanged: (value){
              setState(() {
              selectedRadioOption = value!;
              });
              print('Opcion seleccionada: $selectedRadioOption');
            },),
          ),
        ),
        ListTile(
          title: Text('Fluttter',
          style: AppTheme.lightTheme.textTheme.headlineMedium,),
          leading: Transform.scale(
            scale: 1.0,
            child: Radio(value: 2,
            groupValue: selectedRadioOption,
            onChanged: (value){
              setState(() {
              selectedRadioOption = value!;
              });
              print('Opcion seleccionada: $selectedRadioOption');
            },),
          ),
        )
      ],
    );
  }

  Row entradasCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Navegador',
        style: AppTheme.lightTheme.textTheme.headlineMedium,),
        Checkbox(value: isChecked1, onChanged: (value){
          setState(() {
            isChecked1 = value!;
            print('Valor de navegador: $isChecked1');
          });
        }),
        Text('Emulador',
        style: AppTheme.lightTheme.textTheme.headlineMedium,),
        Checkbox(value: isChecked2, onChanged: (value){
          setState(() {
            isChecked2 = value!;
            print('Valor de navegador: $isChecked2');
          });
        }),
        Text('Smartphone',
        style: AppTheme.lightTheme.textTheme.headlineMedium,),
        Checkbox(value: isChecked3, onChanged: (value){
          setState(() {
            isChecked3 = value!;
            print('Valor de navegador: $isChecked3');
          });
        }),
      ],
    );
  }

}