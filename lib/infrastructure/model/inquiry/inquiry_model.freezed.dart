// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inquiry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InquiryModel _$InquiryModelFromJson(Map<String, dynamic> json) {
  return _InquiryModel.fromJson(json);
}

/// @nodoc
mixin _$InquiryModel {
  String get inquiryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get createdUserId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isReplied => throw _privateConstructorUsedError;
  @CreatedAtField()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InquiryModelCopyWith<InquiryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InquiryModelCopyWith<$Res> {
  factory $InquiryModelCopyWith(
          InquiryModel value, $Res Function(InquiryModel) then) =
      _$InquiryModelCopyWithImpl<$Res, InquiryModel>;
  @useResult
  $Res call(
      {String inquiryId,
      String title,
      String content,
      String createdUserId,
      String email,
      bool isReplied,
      @CreatedAtField() DateTime? createdAt});
}

/// @nodoc
class _$InquiryModelCopyWithImpl<$Res, $Val extends InquiryModel>
    implements $InquiryModelCopyWith<$Res> {
  _$InquiryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inquiryId = null,
    Object? title = null,
    Object? content = null,
    Object? createdUserId = null,
    Object? email = null,
    Object? isReplied = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      inquiryId: null == inquiryId
          ? _value.inquiryId
          : inquiryId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdUserId: null == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isReplied: null == isReplied
          ? _value.isReplied
          : isReplied // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InquiryModelCopyWith<$Res>
    implements $InquiryModelCopyWith<$Res> {
  factory _$$_InquiryModelCopyWith(
          _$_InquiryModel value, $Res Function(_$_InquiryModel) then) =
      __$$_InquiryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String inquiryId,
      String title,
      String content,
      String createdUserId,
      String email,
      bool isReplied,
      @CreatedAtField() DateTime? createdAt});
}

/// @nodoc
class __$$_InquiryModelCopyWithImpl<$Res>
    extends _$InquiryModelCopyWithImpl<$Res, _$_InquiryModel>
    implements _$$_InquiryModelCopyWith<$Res> {
  __$$_InquiryModelCopyWithImpl(
      _$_InquiryModel _value, $Res Function(_$_InquiryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inquiryId = null,
    Object? title = null,
    Object? content = null,
    Object? createdUserId = null,
    Object? email = null,
    Object? isReplied = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$_InquiryModel(
      inquiryId: null == inquiryId
          ? _value.inquiryId
          : inquiryId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdUserId: null == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isReplied: null == isReplied
          ? _value.isReplied
          : isReplied // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InquiryModel implements _InquiryModel {
  const _$_InquiryModel(
      {required this.inquiryId,
      required this.title,
      required this.content,
      required this.createdUserId,
      required this.email,
      required this.isReplied,
      @CreatedAtField() this.createdAt});

  factory _$_InquiryModel.fromJson(Map<String, dynamic> json) =>
      _$$_InquiryModelFromJson(json);

  @override
  final String inquiryId;
  @override
  final String title;
  @override
  final String content;
  @override
  final String createdUserId;
  @override
  final String email;
  @override
  final bool isReplied;
  @override
  @CreatedAtField()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'InquiryModel(inquiryId: $inquiryId, title: $title, content: $content, createdUserId: $createdUserId, email: $email, isReplied: $isReplied, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InquiryModel &&
            (identical(other.inquiryId, inquiryId) ||
                other.inquiryId == inquiryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdUserId, createdUserId) ||
                other.createdUserId == createdUserId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isReplied, isReplied) ||
                other.isReplied == isReplied) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, inquiryId, title, content,
      createdUserId, email, isReplied, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InquiryModelCopyWith<_$_InquiryModel> get copyWith =>
      __$$_InquiryModelCopyWithImpl<_$_InquiryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InquiryModelToJson(
      this,
    );
  }
}

abstract class _InquiryModel implements InquiryModel {
  const factory _InquiryModel(
      {required final String inquiryId,
      required final String title,
      required final String content,
      required final String createdUserId,
      required final String email,
      required final bool isReplied,
      @CreatedAtField() final DateTime? createdAt}) = _$_InquiryModel;

  factory _InquiryModel.fromJson(Map<String, dynamic> json) =
      _$_InquiryModel.fromJson;

  @override
  String get inquiryId;
  @override
  String get title;
  @override
  String get content;
  @override
  String get createdUserId;
  @override
  String get email;
  @override
  bool get isReplied;
  @override
  @CreatedAtField()
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_InquiryModelCopyWith<_$_InquiryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
