import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../../design_system/widgets/app_card.dart';
import '../../design_system/widgets/app_header.dart';
import '../../design_system/widgets/app_search_bar.dart';
import '../../design_system/widgets/section_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NurseAssist'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const AppHeader(
            title: '👋 Boa tarde, Ricardo',
            subtitle: 'Apoio à Decisão Clínica',
          ),

          const SizedBox(height: 24),

          const AppSearchBar(
            hint: 'Buscar protocolo, droga ou cálculo...',
          ),

          const SizedBox(height: 30),

          const SectionTitle(
            title: 'Ferramentas',
          ),

          AppCard(
  icon: Icons.bloodtype,
  title: 'Gasometria',
  subtitle: 'Interpretação ácido-base',
  onTap: () {
    context.go('/gasometry');
  },
),

          AppCard(
            icon: Icons.bolt,
            title: 'Eletrólitos',
            subtitle: 'Distúrbios hidroeletrolíticos',
            onTap: () {},
          ),

          AppCard(
            icon: Icons.medication,
            title: 'Drogas',
            subtitle: 'Diluições e bombas de infusão',
            onTap: () {},
          ),

          AppCard(
            icon: Icons.calculate,
            title: 'Calculadoras',
            subtitle: 'SOFA, APACHE II e outras',
            onTap: () {},
          ),

          AppCard(
            icon: Icons.menu_book,
            title: 'Protocolos',
            subtitle: 'Guias rápidos',
            onTap: () {},
          ),

          AppCard(
            icon: Icons.star,
            title: 'Favoritos',
            subtitle: 'Acesso rápido',
            onTap: () {},
          ),

          AppCard(
            icon: Icons.history,
            title: 'Últimos cálculos',
            subtitle: 'Histórico recente',
            onTap: () {},
          ),

          AppCard(
            icon: Icons.settings,
            title: 'Configurações',
            subtitle: 'Preferências do aplicativo',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}