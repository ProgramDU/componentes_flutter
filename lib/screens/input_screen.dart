import 'package:flutter/material.dart';
import 'package:practica3_componentes/theme/app_theme.dart';


class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  bool valueSwitch= false;
  double valueSlider = 0.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         Text('Entradas', style: AppTheme.lightTheme.textTheme.headlineLarge,
         ),
         entradaTexto(),
         entradaSwitch(),
         entradaSlider(),
          const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: null, child: Text('Regresar', 
            )
            ),
            ElevatedButton(onPressed: null, child: Text('Ir a Data Screen',
            )
            ),
          ],
         ),
          
        ],
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
          activeColor: Color.fromARGB(255, 11, 180, 180),
          inactiveColor: Colors.blueAccent,
          thumbColor: Color.fromARGB(255, 124, 29, 133),
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

}