import 'package:fluttering/AppContainer.dart';
import 'package:fluttering/catfact/data/CatFactDto.dart';
import 'package:fluttering/catfact/data/CatFactService.dart';

class CatFactRepositoryImpl extends CatFactRepository {
  CatFactRepositoryImpl({required this.catFactService});

  final CatFactService catFactService;

  @override
  Future<CatFactDto> getCatFacts() async {
    return await catFactService.getCatFacts();
  }
}

abstract class CatFactRepository {
  Future<CatFactDto> getCatFacts();
}