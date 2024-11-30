import 'package:flutter/material.dart';

class SimpleDividerPage extends StatelessWidget {
  const SimpleDividerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Divider"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Above Divider'), // Text widget above the first Divider
            Divider(), // Creates a horizontal line
            Text('Below Divider'), // Text widget below the first Divider
            Divider(
                thickness: 2, // Sets the thickness of the Divider to 2 pixels
                color: Colors.red),
          ],
        ),
      ),
    );
  }
}
