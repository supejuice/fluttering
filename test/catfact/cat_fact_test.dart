import 'package:flutter_test/flutter_test.dart';
import 'package:fluttering/app_container.dart';

main() {
  test(
    'CatFactRepositoryTest',
    () async {
      var catFactRepositoryTest = AppContainer.catFactRepository;
    var facts = await catFactRepositoryTest.getCatFacts();
    assert(facts.isNotEmpty);
  }
  );
}
