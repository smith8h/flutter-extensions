import 'package:flutter/material.dart';
import 'package:s_extensions/s_extensions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SExtensionsScreenUtil(
      screenSize: const Size(390.0, 844.0),
      app: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // list of widgets
    return [
          const Text('You have pushed the button this many times:'),
          Text('${_counter.half}', style: context.textTheme.headlineMedium),
        ]
        // convert to column
        .toColumn(mainAxisAlignment: .center)
        // center it
        .center()
        // contain it inside the scaffold
        .scaffold(
          appBar: AppBar(
            backgroundColor: 0xFF6A87E3.toColor,
            title: Text(widget.title),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => setState(() => _counter++),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
  }
}
