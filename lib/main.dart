import 'package:flutter/material.dart';

void main() {
  runApp(const MeuCrachaApp());
}

class MeuCrachaApp extends StatelessWidget {
  const MeuCrachaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Crachá do Desenvolvedor'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(color: Colors.black26, blurRadius: 8),
              ],
             
              // ==========================================================
              // DESAFIO 5 (3 PONTOS) - DECORAÇÃO E GRADIENTE
              // Configure o fundo com LinearGradient aplicando
              // Colors.indigo e Colors.blueAccent.
              // ==========================================================
              gradient: const LinearGradient(
                colors: [
                  // TODO: Primeira cor do gradiente,
                  // TODO: Segunda cor do gradiente,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
               
                // ==========================================================
                // DESAFIO 1 (3 PONTOS) - FOTO DE PERFIL
                // Adicione a imagem via NetworkImage no CircleAvatar.
                // ==========================================================
                const CircleAvatar(
                  radius: 50,
                  // TODO: Adicionar propriedade backgroundImage com NetworkImage
                ),
               
                const SizedBox(height: 15),
               
                const Text(
                  'Seu Nome Completo',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
               
                // ==========================================================
                // DESAFIO 2 (3 PONTOS) - ESTILIZAÇÃO E BIOGRAFIA
                // Adicione a propriedade para fonte em itálico (fontStyle).
                // ==========================================================
                const Text(
                  'Desenvolvedor Mobile Flutter / SENAI',
                  style: TextStyle(
                    color: Colors.white70,
                    // TODO: Inserir fontStyle: FontStyle.italic
                  ),
                ),
               
                const Divider(color: Colors.white38, height: 30),
               
                // ==========================================================
                // DESAFIO 3 (3 PONTOS) - ALINHAMENTO DE SKILLS (ROW)
                // Alinhe ao centro e crie os 3 Chips: 'Dart', 'Flutter', 'Git'.
                // ==========================================================
                const Row(
                  // TODO: Adicionar mainAxisAlignment: MainAxisAlignment.center
                  children: [
                    Chip(label: Text('Dart')),
                    SizedBox(width: 5),
                    // TODO: Adicionar o Chip 'Flutter',
                    SizedBox(width: 5),
                    // TODO: Adicionar o Chip 'Git',
                  ],
                ),
               
                const SizedBox(height: 15),
               
                // ==========================================================
                // DESAFIO 4 (3 PONTOS) - COMPILAÇÃO E ESTRUTURA
                // Garanta que o projeto prova_cracha_app compila sem erros no Debian. Tire um print e anexe a esta atividade.
                // ==========================================================
              ],
            ),
          ),
        ),
      ),
    );
  }
}