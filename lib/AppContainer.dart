import 'package:dio/dio.dart';
import 'package:fluttering/catfact/data/CatFactRepository.dart';
import 'package:fluttering/catfact/data/CatFactService.dart';

class AppContainer {
  late final Dio _dioClient = Dio();
  late final _catFactService =
      CatFactService(_dioClient, baseUrl: "https://meowfacts.herokuapp.com/");
  late final CatFactRepository catFactRepository =
      CatFactRepositoryImpl(catFactService: _catFactService);
}
