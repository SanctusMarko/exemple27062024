// lib/main.dart

import 'package:flutter/material.dart';
import 'widgets/message_widget.dart';

void main() {
  runApp(KeineLustApp());
}

class KeineLustApp extends StatelessWidget {
  const KeineLustApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "KeinLust App",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Keine Stress Bitte!!!"),
        ),
        body: const Center(
          child: MessageWidget(message: "Ich brauche keine Stress"),
        ),
      ),
    );
  }
}
