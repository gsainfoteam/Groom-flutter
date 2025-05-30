import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:groom_flutter/app/data/models/login_request_model.dart';
import 'package:groom_flutter/app/data/models/register_request_model.dart';
import 'package:groom_flutter/app/data/models/token_response_model.dart';
import 'package:groom_flutter/app/data/models/token_request_model.dart';

part 'auth_api.g.dart';

@RestApi(baseUrl: "주소/auth")
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST("/register")
  Future<void> register(@Body() RegisterRequestModel registerRequesterModel);

  @POST("/logIn")
  Future<TokenResponseModel> logIn(@Body() LoginRequestModel loginRequestModel);

  @POST("/logOut")
  Future<void> logOut(@Body() TokenRequestModel tokenRequestModel);

  @POST("/refresh")
  Future<TokenResponseModel> refresh(
    @Body() TokenRequestModel tokenRequestModel,
  );
}
