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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              //child: const Icon ( Icons.add ),
              child: const Text('-1'),
              onPressed: () => setState(() => contador--)
            ),
            FloatingActionButton(
              //child: const Icon ( Icons.add ),
              child: const Text('RESET'),
              onPressed: () => setState(() => contador=0)
            ),
            FloatingActionButton(
              //child: const Icon ( Icons.add ),
              child: const Text('+1'),
              onPressed: () => setState(() => contador++)
            ),
          ],
        ),
    );
  }
}