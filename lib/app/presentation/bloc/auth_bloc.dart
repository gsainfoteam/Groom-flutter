import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groom_flutter/app/data/data_source/auth_api.dart';
import 'package:groom_flutter/app/data/models/login_request_model.dart';
import 'package:groom_flutter/app/data/models/token_request_model.dart';
import 'package:groom_flutter/app/data/models/token_response_model.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(_Initial()) {
    on<_LogIn>((event, emit) async {
      try {
        emit(_LoggingIn());
        TokenResponseModel tokenResponse = await AuthApi(
          Dio(),
        ).logIn(event.loginRequestModel);
        emit(_LoggedIn(tokenResponse));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
    /*     on<_LogOut>((event, emit) async {
      try {
        emit(_LoggingOut());
      }
    }); */
    on<_Refresh>((event, emit) async {});
  }
}

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logIn(LoginRequestModel loginRequestModel) = _LogIn;
  const factory AuthEvent.logOut(TokenRequestModel tokenRequestModel) = _LogOut;
  const factory AuthEvent.refresh(TokenRequestModel tokenRequestModel) =
      _Refresh;
}

@freezed
sealed class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.init() = _Initial;
  const factory AuthState.loggingIn() = _LoggingIn;
  const factory AuthState.loggedIn(TokenResponseModel tokenResponseModel) =
      _LoggedIn;
  const factory AuthState.loggingOut() = _LoggingOut;
  const factory AuthState.error(String error) = _Error;
}
