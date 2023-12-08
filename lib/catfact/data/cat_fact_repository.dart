import 'package:fluttering/catfact/data/cat_fact_service.dart';

class CatFactRepositoryImpl extends CatFactRepository {
  CatFactRepositoryImpl({required this.catFactService});

  final CatFactService catFactService;

  @override
  Future<List<String>> getCatFacts() async {
    try {
      final catFactDto = await catFactService.getCatFacts();
      return catFactDto.data;
    } catch (e) {
      print(e);
      return [];
    }
  }
}

abstract class CatFactRepository {
  Future<List<String>> getCatFacts();
}
