import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int contador = 0;

  @override
  Widget build(BuildContext context) {

    const tamano30 = TextStyle(fontSize: 30);
    
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Contador'),
        elevation: 10.0,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clics', style: tamano30),
              SizedBox(height: 20),
              Text('$contador',  style: tamano30),
            ],
          )
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          children: [
            FloatingActionButton(
              //child: const Icon ( Icons.add ),
              child: const Text('Añadir'),
              onPressed: (){
                  print('Se ha registrado una pulsación');
                  contador++;
                  setState(() {
                    
                  });
                  print('$contador');
              },
            ),
          ],
        ),
    );
  }
}