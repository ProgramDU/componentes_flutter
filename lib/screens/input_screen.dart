import 'package:flutter/material.dart';
import 'package:practica3_componentes/theme/app_theme.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       Text('Entradas',
       style: AppTheme.lightTheme.textTheme.headlineLarge,),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: null, child: Text('regresar', 
          style: AppTheme.lightTheme.textTheme.bodyMedium,)
          ),
          ElevatedButton(onPressed: null, child: Text('Ir a Data Screen',
          style: AppTheme.lightTheme.textTheme.bodyMedium,)
          ),
        ],
       ),
        
      ],
    );
  }
}