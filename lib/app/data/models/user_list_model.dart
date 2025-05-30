import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groom_flutter/app/domain/entities/user_entity.dart';
import 'package:groom_flutter/app/domain/entities/user_list_entity.dart';
import 'user_model.dart';

part 'user_list_model.freezed.dart';
part 'user_list_model.g.dart';

@freezed
class UserListModel with _$UserListModel {
  const factory UserListModel({
    required int count,
    required List<UserModel> userModelList,
  }) = _UserListModel;

  factory UserListModel.fromJson(Map<String, dynamic> json) =>
      _$UserListModelFromJson(json);
}

extension UserListMapper on UserListModel {
  UserListEntity toEntity() {
    final List<UserEntity> entityList =
        userModelList.map((userModel) => userModel.toEntity()).toList();

    return UserListEntity(count: count, userEntityList: entityList);
  }
}
