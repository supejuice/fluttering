import 'package:dio/dio.dart';
import 'package:fluttering/catfact/data/CatFactDto.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'CatFactService.g.dart';

@RestApi()
abstract class CatFactService {
  factory CatFactService(Dio dio, {String baseUrl}) = _CatFactService;

  @GET("?count=20&lang=eng-us")
  Future<CatFactDto> getCatFacts();
}