import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groom_flutter/app/data/data_source/users_api.dart';
import 'package:groom_flutter/app/data/models/user_list_model.dart';

part 'user_list_bloc.freezed.dart';

class UserListBloc extends Bloc<UserListEvent, UserListState> {
  UserListBloc() : super(_Initial()) {
    on<_Load>((event, emit) async {
      try {
        emit(_Loading());
        UserListModel userList = await UserApi(Dio()).getUserList(event.uuid);
        emit(_Done(userList));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}

@freezed
sealed class UserListEvent with _$UserListEvent {
  const factory UserListEvent.load(int uuid) = _Load;
}

@freezed
sealed class UserListState with _$UserListState {
  const UserListState._();
  const factory UserListState.init() = _Initial;
  const factory UserListState.loading() = _Loading;
  const factory UserListState.done(UserListModel userList) = _Done;
  const factory UserListState.error(String error) = _Error;
}
