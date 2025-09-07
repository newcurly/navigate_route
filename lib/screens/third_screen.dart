import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static String routeName = '/third';
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    return Scaffold(
      appBar: AppBar(title: const Text("Third Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: ${args['name']}"),
            Text("Message: ${args['message']}"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Item detail returned");
              },
              child: const Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
