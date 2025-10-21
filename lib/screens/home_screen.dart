import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int contador = 0;

  void incrementar() {
    contador++;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

    void reset() {
    contador=0;
    setState(() {});
  }

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
        floatingActionButton: CustomFloatingActionButton(
          incrementarFn: incrementar,
          decrementarFn: decrementar,
          resetFn: reset,
        ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {

  final Function incrementarFn;
  final Function decrementarFn;
  final Function resetFn;

  const CustomFloatingActionButton({
    super.key, required this.incrementarFn, required this.decrementarFn, required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Text('-1'),
          onPressed: () => decrementarFn()
        ),
        FloatingActionButton(
          child: const Text('RESET'),
          onPressed: () => resetFn()
        ),
        FloatingActionButton(
          child: const Text('+1'),
          onPressed: () => incrementarFn()
        ),
      ],
    );
  }
}