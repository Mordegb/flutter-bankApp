import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  void dispose() {
    // Limpa os controllers da memória (igual dar unsubscribe no ngOnDestroy)
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _fazerLogin() {
    if (_formKey.currentState!.validate()) {
      final email = _emailController.text;
      final senha = _senhaController.text;

      // Aqui depois você chama seu service/API de verdade
      debugPrint('Login com: $email / $senha');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Bem-vindo, $email!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'E-mail'),
                validator: (valor) {
                  if (valor == null || valor.isEmpty) {
                    return 'Informe o e-mail';
                  }
                  if (!valor.contains('@')) {
                    return 'E-mail inválido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _senhaController,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Senha'),
                validator: (valor) {
                  if (valor == null || valor.length < 6) {
                    return 'Senha deve ter no mínimo 6 caracteres';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _fazerLogin,
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}