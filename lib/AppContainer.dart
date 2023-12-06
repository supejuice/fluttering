import 'package:dio/dio.dart';
import 'package:fluttering/catfact/data/CatFactRepository.dart';
import 'package:fluttering/catfact/data/CatFactService.dart';

class AppContainer {
  late Dio dioClient = Dio();
  // ..options.baseUrl = "https://meowfacts.herokuapp.com/";
  late var catFactService = CatFactService(dioClient, baseUrl: "https://meowfacts.herokuapp.com/");
  late CatFactRepository catFactRepository = CatFactRepositoryImpl(catFactService: catFactService);

}
