import 'package:flutter/material.dart';

class DividerPage extends StatelessWidget {
  const DividerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Divider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Above Divider'), // Text widget above the first Divider

            Divider(), // Creates a horizontal line

            Text('Below Divider'), // Text widget below the first Divider

            Divider(
              thickness: 2, // Sets the thickness of the Divider to 2 pixels
              color: Colors.red, // Sets the color of the Divider to red
            ),
          ],
        ),
      ),
    );
  }
}
