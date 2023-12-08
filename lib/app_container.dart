import 'package:dio/dio.dart';
import 'package:fluttering/catfact/data/cat_fact_repository.dart';
import 'package:fluttering/catfact/data/cat_fact_service.dart';

class AppContainer {
  late final Dio _dioClient = Dio();
  late final _catFactService =
      CatFactService(_dioClient, baseUrl: "https://meowfacts.herokuapp.com/");
  late final CatFactRepository catFactRepository =
      CatFactRepositoryImpl(catFactService: _catFactService);
}
