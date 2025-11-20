import 'package:deliverytycoon/classes/delivery_unit.dart';
import 'package:deliverytycoon/components/delivery_list.dart';
import 'package:deliverytycoon/components/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery Tycoon',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.green)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = "Delivery Tycoon";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  final List<DeliveryUnit> units = [
    DeliveryUnit(
      name: "Motorizado",
      description: "Entrega rápida en moto",
      iconPath: "assets/images/package.png",
    ),
    DeliveryUnit(
      name: "Dron",
      description: "Entrega aérea automática",
      iconPath: "assets/images/package.png",
    ),
    DeliveryUnit(
      name: "Robot",
      description: "Entrega autónoma terrestre",
      iconPath: "assets/images/package.png",
    ),
  ];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const Text('You have pushed the button this many times:'),
          Text('$_counter', style: Theme.of(context).textTheme.headlineMedium),
          Header(),
          Expanded(child: DeliveryList(items: units)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
