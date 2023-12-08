import 'package:dio/dio.dart';
import 'package:fluttering/catfact/data/cat_fact_dto.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'cat_fact_service.g.dart';

@RestApi()
abstract class CatFactService {
  factory CatFactService(Dio dio, {String baseUrl}) = _CatFactService;

  @GET("?count=20&lang=eng-us")
  Future<CatFactDto> getCatFacts();
}