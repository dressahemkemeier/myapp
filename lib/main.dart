import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Programa Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Programa Layout', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.purpleAccent,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) => constraints.maxWidth > 600
              ? Row(
                  children: [
                    Container(
                      width: 250,
                      color: Colors.grey[200],
                      padding: const EdgeInsets.all(16),
                      child: const Text('Menu Lateral', style: TextStyle(fontSize: 18)),
                    ),
                    Expanded(child: _buildMainContent()),
                  ],
                )
              : Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      color: Colors.purple[50],
                      child: const Text('Layout Superior', style: TextStyle(fontSize: 18, color: Colors.purple)),
                    ),
                    _buildMainContent(),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            width: 200,
            height: 300,
            decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(16)),
            child: const Center(
              child: Text(
                'Meu Aplicativo',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text('Layout Inferior', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
