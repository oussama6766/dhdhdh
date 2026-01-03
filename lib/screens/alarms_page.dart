import 'package:flutter/material.dart';

class AlarmsPage extends StatelessWidget {
  const AlarmsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 0, // Placeholder
        itemBuilder: (context, index) {
          return const ListTile(
            title: Text('Alarm Item'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add Alarm Logic
        },
        child: const Icon(Icons.add_alarm),
      ),
    );
  }
}
