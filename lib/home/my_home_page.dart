import 'package:flutter/material.dart';

import '../app_router.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(widget.title),
      ),
      body: Center(child: _HomeList()),
    );
  }
}

class _HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            onTap: () {
              context.openCatFacts();
            },
            leading: const Icon(Icons.pets),
            title: const Text("Cat Facts")),
        ListTile(
            onTap: () {
              // context.go(AppRouter.catFacts);
            },
            leading: const Icon(Icons.catching_pokemon),
            title: const Text("Pokedex")),
      ],
    );
  }
}
