import 'package:dio/dio.dart';
import 'package:fluttering/catfact/data/cat_fact_repository.dart';
import 'package:fluttering/catfact/data/cat_fact_service.dart';

class AppContainer {
  AppContainer._();

  static final Dio _dioClient = Dio();
  static final _catFactService =
      CatFactService(_dioClient, baseUrl: "https://meowfacts.herokuapp.com/");
  static final CatFactRepository catFactRepository =
      CatFactRepositoryImpl(catFactService: _catFactService);
}
