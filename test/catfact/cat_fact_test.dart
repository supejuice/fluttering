import 'package:flutter_test/flutter_test.dart';
import 'package:fluttering/app_container.dart';

main() {
  test(
    'CatFactRepositoryTest',
    () async {
      var container = AppContainer();
      var catFactRepositoryTest = container.catFactRepository;
      var facts = await catFactRepositoryTest.getCatFacts();
      assert(facts.isNotEmpty);
    }
  );
}
