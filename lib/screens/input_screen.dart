import 'package:flutter/material.dart';


class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         Text('Entradas'),
          Row(
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
}