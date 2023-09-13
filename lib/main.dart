import 'package:flutter/material.dart';
import 'package:testnewmap/map_screen.dart';
import 'package:testnewmap/pop_up_message.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PopUpMessage(),
      // home: startScreen(
      //   title: 'hi',
      // ),
      //home: MapScreen()
    );
  }
}

class startScreen extends StatefulWidget {
  const startScreen({super.key, required this.title});
  final String title;
  @override
  State<startScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<startScreen> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/logo.png',
                width: 201,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Welcome to our service!',
                style: TextStyle(
                    fontSize: 24, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              const SizedBox(
                height: 15,
              ),
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapScreen()));
                },
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Start'),
              ),
            ],
          ),
          color: Color.fromARGB(255, 26, 16, 127),
          width: 500,
        ),
      ),
    );
  }
}
