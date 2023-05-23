import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{
  const CardPage({super.key});
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('Card Page'),
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