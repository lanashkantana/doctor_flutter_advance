import 'package:dio/dio.dart';

import 'package:p1/core/networking/api_constans.dart';
import 'package:p1/features/login/data/model/login_request_body.dart';
import 'package:p1/features/login/data/model/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
    // @Header('Accept') String contentType


  );
  // @GET('/tasks')
  // Future<List<Task>> getTasks();




}