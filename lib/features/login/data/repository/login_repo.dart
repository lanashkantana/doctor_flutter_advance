import 'package:p1/core/networking/api_error_handler.dart';
import 'package:p1/core/networking/api_result.dart';
import 'package:p1/core/networking/api_services.dart';
import 'package:p1/features/login/data/model/login_request_body.dart';
import 'package:p1/features/login/data/model/login_response.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
