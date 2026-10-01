import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F1A),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'D.Bank',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.notifications_none, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Olá, Eduardo',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(height: 16),

              // Card de saldo
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), gradient: const LinearGradient(
                    colors: [Color(0xFF7B2FF7), Color(0xFF3A1C71)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saldo disponível',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'R\$ 1.234,56',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Atalhos
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _Atalho(icon: Icons.pix, label: 'Pix'),
                  _Atalho(icon: Icons.receipt_long, label: 'Pagar'),
                  _Atalho(icon: Icons.swap_horiz, label: 'Transferir'),
                  _Atalho(icon: Icons.credit_card, label: 'Cartões'),
                ],
              ),
              const SizedBox(height: 24),

              const Text(
                'Últimas transações',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const _Transacao(nome: 'Mercado', valor: '- R\$ 89,90'),
              const _Transacao(nome: 'Salário', valor: '+ R\$ 2.500,00'),
              const _Transacao(nome: 'Streaming', valor: '- R\$ 39,90'),
            ],
          ),
        ),
      ),
    );
  }
}

class _Atalho extends StatelessWidget {
  final IconData icon;
  final String label;

  const _Atalho({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 26,
          backgroundColor: const Color(0xFF1E1E2E),
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(color: Colors.white70)),
      ],
    );
  }
}

class _Transacao extends StatelessWidget {
  final String nome;
  final String valor;

  const _Transacao({required this.nome, required this.valor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const CircleAvatar(
        backgroundColor: Color(0xFF1E1E2E),
        child: Icon(Icons.shopping_bag_outlined, color: Colors.white),
      ),
      title: Text(nome, style: const TextStyle(color: Colors.white)),
      trailing: Text(valor, style: const TextStyle(color: Colors.white70)),
    );
  }
}
