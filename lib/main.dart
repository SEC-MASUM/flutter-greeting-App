import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Greating App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello, World!",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text("Welcome to Flutter!"),
            SizedBox(height: 20),
            Image.network(
              "https://iconape.com/wp-content/files/yb/61798/png/flutter-logo.png",
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                MySnackBar("Button Pressed!", context);
              },
              child: Text("Press Me"),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
