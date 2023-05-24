import 'package:flutter/material.dart';

class WidgetPage extends StatelessWidget{
  const WidgetPage({super.key});
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('Detailed WidgetPage Demo Page'),
        backgroundColor: const Color.fromARGB(60, 38, 4, 4),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child:const Text('Go back!'),
        ),
        )
     );
  }

}