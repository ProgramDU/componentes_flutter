import 'package:flutter/material.dart';
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
  int selectedIndex =0;
  int selectedRadioOption = 0; // valor para los RadioButton
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
           Text('Que usas para correr tus apps de flutter?',
           style: AppTheme.lightTheme.textTheme.headlineMedium,),
           entradasCheck(),


            const ElevatedButton(onPressed: null, child: Text('Guardar',
            )
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: selectedIndex,
      backgroundColor: AppTheme.accentColor,
      items: const[
        BottomNavigationBarItem(icon:Icon(Icons.home_max_rounded,
        color: AppTheme.backColor,),
        label: "Inicio",
        backgroundColor: Color.fromARGB(255, 235, 242, 247)),
        BottomNavigationBarItem(icon: Icon(Icons.data_object, color: AppTheme.backColor,),
        label: "Datos",
        backgroundColor: Color.fromARGB(255, 238, 236, 252)),
        BottomNavigationBarItem(icon: Icon(Icons.exit_to_app, color: AppTheme.backColor,),
        label: "Salir",
        backgroundColor: Color.fromARGB(255, 237, 252, 245)),
      ],
      unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
      ),
    );
  }

  TextField entradaTexto() {
    return TextField(
        decoration: InputDecoration(
          border:  UnderlineInputBorder(),
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
          inactiveColor: const Color.fromARGB(255, 198, 147, 202),
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