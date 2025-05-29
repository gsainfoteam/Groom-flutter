import 'package:freezed_annotation/freezed_annotation.dart';
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
