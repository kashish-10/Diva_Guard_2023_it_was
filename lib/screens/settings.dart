import 'package:diva/provider/auth_provider.dart';
import 'package:diva/screens/add_contacts.dart';
import 'package:diva/screens/fakecall/fakecall.dart';
import 'package:diva/screens/location_update.dart';
import 'package:diva/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('assets/profile.jpg'),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kriti Thawaria',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '+91 1234567890',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Age: 20',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Divider(color: Colors.grey),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text('Edit Emergency Contacts'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddContacts()),
              );
            },
          ),
          const Divider(color: Colors.grey),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WelcomeScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SafeAudioPage extends StatelessWidget {
  const SafeAudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Safe Audio'),
      ),
      body: const Center(
        child: Text('Safe Audio Page'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.purple),
    home: const SettingsPage(),
  ));
}
