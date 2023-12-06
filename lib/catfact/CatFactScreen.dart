import 'package:flutter/material.dart';

ListView catFactList() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('Cat fact $index'),
      );
    },
  );
}