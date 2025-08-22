import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:p1/core/networking/api_result.dart';
import 'package:p1/features/login/data/model/login_request_body.dart';
import 'package:p1/features/login/data/repository/login_repo.dart';
import 'package:p1/features/login/logic/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController;
  final TextEditingController passwordController;

  LoginCubit(this._loginRepo, this.emailController, this.passwordController) : super(const LoginState.initial());

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
