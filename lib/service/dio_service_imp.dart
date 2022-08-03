import 'package:dio/dio.dart';
import 'package:movieapp/service/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/4/',
      headers: {
        'content-type': 'application/json;charset=utf-8',
        'authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyOWVlOTA3N2JjNWRjZDc5YzhiNDVjOTk3N2U2OTYyNSIsInN1YiI6IjYyZWE2MTM0NTdkMzc4MDA1ODQ1NjhiNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.RUoK31sDRqNhnbXbVlE1S40E6J_6NFuplg0B8_qJGV8',
      },
    ));
  }
}
