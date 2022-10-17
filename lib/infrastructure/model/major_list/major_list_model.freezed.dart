// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'major_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MajorListModel _$MajorListModelFromJson(Map<String, dynamic> json) {
  return _MajorListModel.fromJson(json);
}

/// @nodoc
mixin _$MajorListModel {
  String get listId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get createdUserId => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  @CreatedAtField()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @UpdatedAtField()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MajorListModelCopyWith<MajorListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MajorListModelCopyWith<$Res> {
  factory $MajorListModelCopyWith(
          MajorListModel value, $Res Function(MajorListModel) then) =
      _$MajorListModelCopyWithImpl<$Res, MajorListModel>;
  @useResult
  $Res call(
      {String listId,
      String content,
      String createdUserId,
      bool isDeleted,
      @CreatedAtField() DateTime? createdAt,
      @UpdatedAtField() DateTime? updatedAt});
}

/// @nodoc
class _$MajorListModelCopyWithImpl<$Res, $Val extends MajorListModel>
    implements $MajorListModelCopyWith<$Res> {
  _$MajorListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listId = null,
    Object? content = null,
    Object? createdUserId = null,
    Object? isDeleted = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      listId: null == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdUserId: null == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MajorListModelCopyWith<$Res>
    implements $MajorListModelCopyWith<$Res> {
  factory _$$_MajorListModelCopyWith(
          _$_MajorListModel value, $Res Function(_$_MajorListModel) then) =
      __$$_MajorListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String listId,
      String content,
      String createdUserId,
      bool isDeleted,
      @CreatedAtField() DateTime? createdAt,
      @UpdatedAtField() DateTime? updatedAt});
}

/// @nodoc
class __$$_MajorListModelCopyWithImpl<$Res>
    extends _$MajorListModelCopyWithImpl<$Res, _$_MajorListModel>
    implements _$$_MajorListModelCopyWith<$Res> {
  __$$_MajorListModelCopyWithImpl(
      _$_MajorListModel _value, $Res Function(_$_MajorListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listId = null,
    Object? content = null,
    Object? createdUserId = null,
    Object? isDeleted = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_MajorListModel(
      listId: null == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdUserId: null == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MajorListModel implements _MajorListModel {
  const _$_MajorListModel(
      {required this.listId,
      required this.content,
      required this.createdUserId,
      required this.isDeleted,
      @CreatedAtField() this.createdAt,
      @UpdatedAtField() this.updatedAt});

  factory _$_MajorListModel.fromJson(Map<String, dynamic> json) =>
      _$$_MajorListModelFromJson(json);

  @override
  final String listId;
  @override
  final String content;
  @override
  final String createdUserId;
  @override
  final bool isDeleted;
  @override
  @CreatedAtField()
  final DateTime? createdAt;
  @override
  @UpdatedAtField()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'MajorListModel(listId: $listId, content: $content, createdUserId: $createdUserId, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MajorListModel &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdUserId, createdUserId) ||
                other.createdUserId == createdUserId) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, listId, content, createdUserId,
      isDeleted, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MajorListModelCopyWith<_$_MajorListModel> get copyWith =>
      __$$_MajorListModelCopyWithImpl<_$_MajorListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MajorListModelToJson(
      this,
    );
  }
}

abstract class _MajorListModel implements MajorListModel {
  const factory _MajorListModel(
      {required final String listId,
      required final String content,
      required final String createdUserId,
      required final bool isDeleted,
      @CreatedAtField() final DateTime? createdAt,
      @UpdatedAtField() final DateTime? updatedAt}) = _$_MajorListModel;

  factory _MajorListModel.fromJson(Map<String, dynamic> json) =
      _$_MajorListModel.fromJson;

  @override
  String get listId;
  @override
  String get content;
  @override
  String get createdUserId;
  @override
  bool get isDeleted;
  @override
  @CreatedAtField()
  DateTime? get createdAt;
  @override
  @UpdatedAtField()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_MajorListModelCopyWith<_$_MajorListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
