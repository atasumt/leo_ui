import 'package:lio_ui_example/core/models/entities/login_request_model/login_request_model.dart';
import 'package:lio_ui_example/core/models/login_response_model/login_response_model.dart';

abstract class LoginRepositoryInterface {
  Future<LoginResponseModel> signIn({
    required LoginRequestModel? loginRequestModel,
  });
}
