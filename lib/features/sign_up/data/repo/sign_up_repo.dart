import 'package:p1/core/networking/api_error_handler.dart';
import 'package:p1/core/networking/api_result.dart';
import 'package:p1/core/networking/api_services.dart';
import 'package:p1/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:p1/features/sign_up/data/model/sign_up_response.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpResponse>> register(
    SignUpRequestBody signUpRequestBody,
  ) async {
    try {
      final response = await _apiService.register(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
