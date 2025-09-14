import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:navigate_route/provider/counter_provider.dart';
class DetailScreen extends StatelessWidget {
  static String routeName = '/detail';
  const DetailScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    //final args = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final message = context.watch<CounterProvider>().message;
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen')),
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
              onPressed: () {
                context
                    .read<CounterProvider>()
                    .setMessage('this is data from detail page');
                Navigator.pop(context);

              },
              child: const Text('Send data back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}

