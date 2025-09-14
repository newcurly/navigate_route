import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:navigate_route/screens/detail_screen.dart';
import 'package:navigate_route/provider/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final message = context.watch<CounterProvider>().message;
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            message.isEmpty ? '' : message,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
            ElevatedButton(
              onPressed: () async {
                  context
                    .read<CounterProvider>()
                    .setMessage('this is data from home page');
                  Navigator.pushNamed(context, DetailScreen.routeName);
              },
              child: const Text('Go to Detail Screen'),
            ),
          ],
        ),
      ),
    );
  }
}