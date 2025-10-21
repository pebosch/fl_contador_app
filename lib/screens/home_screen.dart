import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const tamano30 = TextStyle(fontSize: 30);

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('HomeScreen'),
        elevation: 10.0,
      ),
      body: Center(
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Deliver features faster', style: tamano30),
              SizedBox(height: 100),
              Text('Craft beautiful UIs',  style: tamano30),
            ],
          )
        ),
        
        floatingActionButton: FloatingActionButton(
          //child: const Icon ( Icons.add ),
          child: const Text('Añadir'),
          onPressed: (){
              print('Estoy presionando el botón');
          },
        ),
    );
  }
  
}