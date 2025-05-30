import 'package:dio/dio.dart';
import 'package:groom_flutter/app/data/models/user_list_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:groom_flutter/app/data/models/user_model.dart';
import 'package:groom_flutter/app/data/models/token_request_model.dart';

part 'users_api.g.dart';

@RestApi(baseUrl: "주소/users")
abstract class UserApi {
  factory UserApi(Dio dio, {String baseUrl}) = _UserApi;

  @POST("")
  Future<UserModel> generateUser(@Body() UserModel userModel);

  @PUT("/{uuid}")
  Future<UserModel> changeUser(
    @Path("uuid") int uuid,
    @Body() UserModel userModel,
  );

  @GET("/{uuid}")
  Future<UserModel> getUser(@Path("uuid") int uuid);

  @GET("/{uuid}/matched")
  Future<UserListModel> getUserList(@Path("uuid") int uuid);
}
