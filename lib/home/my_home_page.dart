import 'package:flutter/material.dart';
import 'package:fluttering/catfact/cat_fact_screen.dart';

import '../app_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late var appContainer = AppContainer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(widget.title),
      ),
      body: Center(
        child: CatFacts(appContainer.catFactRepository)
      ),
    );
  }
}