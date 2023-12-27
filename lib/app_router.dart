// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import 'app_container.dart';
import 'catfact/cat_fact_screen.dart';
import 'home/my_home_page.dart';

/*
* An abstraction over navigation boilerplate
* Also makes migration easier if needed
* */
extension AppRouter on BuildContext {
  static const String CAT_FACTS = '/cat_facts';

  openCatFacts() {
    go(CAT_FACTS);
  }
}

class GoRouterImpl {
  static GoRouter create() => GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) =>
                const MyHomePage(title: "Fluttering away...🕊"),
          ),
          GoRoute(
            path: AppRouter.CAT_FACTS,
            builder: (context, state) => CatFacts(
              AppContainer.catFactRepository,
            ),
          ),
        ],
      );
}
