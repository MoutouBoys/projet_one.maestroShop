import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('asset/images/img1.jpg'),
              ),
              const SizedBox(height: 16),
              const Text(
                "Yalcouyé Mamoutou",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "yalcouyemamoutou02@gmail.com",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Handle logout or edit profile
                },
                child: const Text('Modifier Profil'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
