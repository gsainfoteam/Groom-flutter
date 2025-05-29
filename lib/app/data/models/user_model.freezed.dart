// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get profileImage => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  int get studentNumber => throw _privateConstructorUsedError;
  String get major => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get nationality => throw _privateConstructorUsedError;
  int get mbti => throw _privateConstructorUsedError;
  PreferencesModel get preferences => throw _privateConstructorUsedError;
  String get introduction => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({
    String profileImage,
    String nickname,
    int studentNumber,
    String major,
    int age,
    String gender,
    String nationality,
    int mbti,
    PreferencesModel preferences,
    String introduction,
  });

  $PreferencesModelCopyWith<$Res> get preferences;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileImage = null,
    Object? nickname = null,
    Object? studentNumber = null,
    Object? major = null,
    Object? age = null,
    Object? gender = null,
    Object? nationality = null,
    Object? mbti = null,
    Object? preferences = null,
    Object? introduction = null,
  }) {
    return _then(
      _value.copyWith(
            profileImage:
                null == profileImage
                    ? _value.profileImage
                    : profileImage // ignore: cast_nullable_to_non_nullable
                        as String,
            nickname:
                null == nickname
                    ? _value.nickname
                    : nickname // ignore: cast_nullable_to_non_nullable
                        as String,
            studentNumber:
                null == studentNumber
                    ? _value.studentNumber
                    : studentNumber // ignore: cast_nullable_to_non_nullable
                        as int,
            major:
                null == major
                    ? _value.major
                    : major // ignore: cast_nullable_to_non_nullable
                        as String,
            age:
                null == age
                    ? _value.age
                    : age // ignore: cast_nullable_to_non_nullable
                        as int,
            gender:
                null == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as String,
            nationality:
                null == nationality
                    ? _value.nationality
                    : nationality // ignore: cast_nullable_to_non_nullable
                        as String,
            mbti:
                null == mbti
                    ? _value.mbti
                    : mbti // ignore: cast_nullable_to_non_nullable
                        as int,
            preferences:
                null == preferences
                    ? _value.preferences
                    : preferences // ignore: cast_nullable_to_non_nullable
                        as PreferencesModel,
            introduction:
                null == introduction
                    ? _value.introduction
                    : introduction // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreferencesModelCopyWith<$Res> get preferences {
    return $PreferencesModelCopyWith<$Res>(_value.preferences, (value) {
      return _then(_value.copyWith(preferences: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String profileImage,
    String nickname,
    int studentNumber,
    String major,
    int age,
    String gender,
    String nationality,
    int mbti,
    PreferencesModel preferences,
    String introduction,
  });

  @override
  $PreferencesModelCopyWith<$Res> get preferences;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileImage = null,
    Object? nickname = null,
    Object? studentNumber = null,
    Object? major = null,
    Object? age = null,
    Object? gender = null,
    Object? nationality = null,
    Object? mbti = null,
    Object? preferences = null,
    Object? introduction = null,
  }) {
    return _then(
      _$UserModelImpl(
        profileImage:
            null == profileImage
                ? _value.profileImage
                : profileImage // ignore: cast_nullable_to_non_nullable
                    as String,
        nickname:
            null == nickname
                ? _value.nickname
                : nickname // ignore: cast_nullable_to_non_nullable
                    as String,
        studentNumber:
            null == studentNumber
                ? _value.studentNumber
                : studentNumber // ignore: cast_nullable_to_non_nullable
                    as int,
        major:
            null == major
                ? _value.major
                : major // ignore: cast_nullable_to_non_nullable
                    as String,
        age:
            null == age
                ? _value.age
                : age // ignore: cast_nullable_to_non_nullable
                    as int,
        gender:
            null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as String,
        nationality:
            null == nationality
                ? _value.nationality
                : nationality // ignore: cast_nullable_to_non_nullable
                    as String,
        mbti:
            null == mbti
                ? _value.mbti
                : mbti // ignore: cast_nullable_to_non_nullable
                    as int,
        preferences:
            null == preferences
                ? _value.preferences
                : preferences // ignore: cast_nullable_to_non_nullable
                    as PreferencesModel,
        introduction:
            null == introduction
                ? _value.introduction
                : introduction // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl({
    required this.profileImage,
    required this.nickname,
    required this.studentNumber,
    required this.major,
    required this.age,
    required this.gender,
    required this.nationality,
    required this.mbti,
    required this.preferences,
    required this.introduction,
  });

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String profileImage;
  @override
  final String nickname;
  @override
  final int studentNumber;
  @override
  final String major;
  @override
  final int age;
  @override
  final String gender;
  @override
  final String nationality;
  @override
  final int mbti;
  @override
  final PreferencesModel preferences;
  @override
  final String introduction;

  @override
  String toString() {
    return 'UserModel(profileImage: $profileImage, nickname: $nickname, studentNumber: $studentNumber, major: $major, age: $age, gender: $gender, nationality: $nationality, mbti: $mbti, preferences: $preferences, introduction: $introduction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.studentNumber, studentNumber) ||
                other.studentNumber == studentNumber) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.mbti, mbti) || other.mbti == mbti) &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    profileImage,
    nickname,
    studentNumber,
    major,
    age,
    gender,
    nationality,
    mbti,
    preferences,
    introduction,
  );

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel({
    required final String profileImage,
    required final String nickname,
    required final int studentNumber,
    required final String major,
    required final int age,
    required final String gender,
    required final String nationality,
    required final int mbti,
    required final PreferencesModel preferences,
    required final String introduction,
  }) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get profileImage;
  @override
  String get nickname;
  @override
  int get studentNumber;
  @override
  String get major;
  @override
  int get age;
  @override
  String get gender;
  @override
  String get nationality;
  @override
  int get mbti;
  @override
  PreferencesModel get preferences;
  @override
  String get introduction;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
