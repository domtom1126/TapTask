import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double progress = 0;
  double maxProgress = 100;

  void _increment() {
    setState(() {
      progress++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tap Task'),
        ),
        body: Column(
          children: [
            Text('Push Ups'),
            LinearProgressIndicator(
              value: progress / maxProgress,
            ),
            ElevatedButton(
                onPressed: () {
                  _increment();
                  print(progress);
                },
                child: Text('Tap to complete')),
            Text('$progress'),
          ],
        ));
  }
}
