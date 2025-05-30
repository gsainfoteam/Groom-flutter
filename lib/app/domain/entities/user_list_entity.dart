import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groom_flutter/app/domain/entities/user_entity.dart';

part 'user_list_entity.freezed.dart';

@freezed
class UserListEntity with _$UserListEntity {
  const factory UserListEntity({
    required int count,
    required List<UserEntity> list,
  }) = _UserListEntity;
}
