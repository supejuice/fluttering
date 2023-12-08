import 'package:flutter/material.dart';

import 'data/cat_fact_repository.dart';

class CatFacts extends StatelessWidget {
  const CatFacts(this.catFactRepository, {super.key});

  final CatFactRepository catFactRepository;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: catFactRepository.getCatFacts(),
        builder: (context, snapshot) => _catFactList(snapshot.data));
  }

  ListView _catFactList(List<String>? facts) {
    return ListView.builder(
      itemCount: facts?.length ?? 0,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(facts?.elementAt(index) ?? ""),
        );
      },
    );
  }
}
