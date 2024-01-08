import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lio_ui_example/core/helper/dio/fetch_dio.dart';
import 'package:lio_ui_example/core/models/entities/login_request_model/login_request_model.dart';
import 'package:lio_ui_example/core/models/login_response_model/login_response_model.dart';
import 'package:lio_ui_example/core/repositories/interface/login_repository_interface.dart';

final loginRepositoryProvider = Provider.autoDispose<LoginRepositoryInterface>((ref) => LoginRepository(ref));

class LoginRepository implements LoginRepositoryInterface {
  final Ref _ref;
  LoginRepository(this._ref);

  @override
  Future<LoginResponseModel> signIn({
    required LoginRequestModel? loginRequestModel,
  }) async {
    try {
      var data = {"email": loginRequestModel!.email, "password": loginRequestModel.password};

      var response = await fetchDio()
          .post(
            "accounts:signInWithPassword?key=AIzaSyBWmrQCSyOGF_Ix4JJs9RbziYN6CO6SqE8",
            data: data,
          )
          .then(
            (res) => LoginResponseModel.fromJson(res.data),
          );

      return response;
    } catch (e) {
      return LoginResponseModel.fromJson({});
    }
  }
}
