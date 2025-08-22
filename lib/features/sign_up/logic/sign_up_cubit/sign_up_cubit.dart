import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/core/networking/api_result.dart';
import 'package:p1/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:p1/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:p1/features/sign_up/logic/sign_up_cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  final formKey = GlobalKey<FormState>();
   TextEditingController emailController=TextEditingController();
   TextEditingController passwordController=TextEditingController();
   TextEditingController nameController=TextEditingController();
   TextEditingController phoneController=TextEditingController();
   
   TextEditingController passwordConfirmation=TextEditingController();

  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  void emitregisterStates() async {
    emit(const SignUpState.loading());
    final response = await _signUpRepo.register(SignUpRequestBody (
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
      phone: phoneController.text,
      gender: '0',
      passwordConfirmation: passwordConfirmation.text
      
      
    ));
    response.when(
      success: (signUpResponse) {
        emit(SignUpState.success(signUpResponse));
      },
      failure: (error) {
        emit(SignUpState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
