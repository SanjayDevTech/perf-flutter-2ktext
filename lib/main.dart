import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List<int>.generate(2001, (i) => i).map((e) {
                if (e == 0) {
                  return const Text(
                    "Maestro",
                    style: TextStyle(fontSize: 14, height: 1.8),
                  );
                }
                return Text(
                  LONG_TEXT,
                  style: const TextStyle(fontSize: 14, height: 1.8),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
