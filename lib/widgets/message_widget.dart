// lib/widgets/message_widget.dart

import 'package:flutter/material.dart';

class MessageWidget extends StatefulWidget {
  final String message;

  const MessageWidget({super.key, required this.message});

  @override
  _MessageWidgetState createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.message,
            style: const TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: const Text("Push Button"),
          ),
          const SizedBox(height: 16.0),
          Text(
            "Ich möchte $_count mal keinen Stress!",
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
