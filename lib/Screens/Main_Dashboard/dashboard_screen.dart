import 'package:flutter/material.dart';

class Dashboard_View extends StatelessWidget {
  const Dashboard_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Dashboard!',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
