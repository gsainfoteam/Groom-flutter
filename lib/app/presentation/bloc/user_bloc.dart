import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groom_flutter/app/data/data_source/users_api.dart';
import 'package:groom_flutter/app/data/models/user_model.dart';
import 'package:groom_flutter/app/domain/entities/user_entity.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(_Initial()) {
    on<_Load>((event, emit) async {
      try {
        emit(_Loading());
        UserModel user = await UserApi(Dio()).getUser(event.uuid);
        UserEntity userEntity = user.toEntity();
        emit(_Done(userEntity));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}

@freezed
sealed class UserEvent with _$UserEvent {
  const factory UserEvent.load(int uuid) = _Load;
}

@freezed
sealed class UserState with _$UserState {
  const UserState._();
  const factory UserState.init() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.done(UserEntity user) = _Done;
  const factory UserState.error(String error) = _Error;
}
