import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text('General Settings'),
          leading: const Icon(Icons.settings),
          onTap: () {
            // Navigate to detail settings
          },
        ),
        ListTile(
          title: const Text('Manage Audio'),
          leading: const Icon(Icons.music_note),
          onTap: () {
            // Manage downloaded nasheeds
          },
        ),
        const Divider(),
        const ListTile(
          title: Text('Version'),
          subtitle: Text('1.0.0 (Skeleton)'),
        ),
      ],
    );
  }
}
