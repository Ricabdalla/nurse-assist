import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildCard(
    BuildContext context,
    IconData icon,
    String title,
  ) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NurseAssist'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              'Apoio à Decisão Clínica',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            buildCard(context, Icons.bloodtype, 'Gasometria'),
            buildCard(context, Icons.bolt, 'Eletrólitos'),
            buildCard(context, Icons.medication, 'Drogas'),
            buildCard(context, Icons.calculate, 'Calculadoras'),
            buildCard(context, Icons.menu_book, 'Protocolos'),
            buildCard(context, Icons.settings, 'Configurações'),
          ],
        ),
      ),
    );
  }
}