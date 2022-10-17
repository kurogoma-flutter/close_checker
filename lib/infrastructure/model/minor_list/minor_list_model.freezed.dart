// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'minor_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MinorListModel _$MinorListModelFromJson(Map<String, dynamic> json) {
  return _MinorListModel.fromJson(json);
}

/// @nodoc
mixin _$MinorListModel {
  String get checkId => throw _privateConstructorUsedError;
  String get listId => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  @CreatedAtField()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @UpdatedAtField()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinorListModelCopyWith<MinorListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinorListModelCopyWith<$Res> {
  factory $MinorListModelCopyWith(
          MinorListModel value, $Res Function(MinorListModel) then) =
      _$MinorListModelCopyWithImpl<$Res, MinorListModel>;
  @useResult
  $Res call(
      {String checkId,
      String listId,
      String icon,
      String content,
      bool isDone,
      bool isDeleted,
      @CreatedAtField() DateTime? createdAt,
      @UpdatedAtField() DateTime? updatedAt});
}

/// @nodoc
class _$MinorListModelCopyWithImpl<$Res, $Val extends MinorListModel>
    implements $MinorListModelCopyWith<$Res> {
  _$MinorListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkId = null,
    Object? listId = null,
    Object? icon = null,
    Object? content = null,
    Object? isDone = null,
    Object? isDeleted = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      checkId: null == checkId
          ? _value.checkId
          : checkId // ignore: cast_nullable_to_non_nullable
              as String,
      listId: null == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_MinorListModelCopyWith<$Res>
    implements $MinorListModelCopyWith<$Res> {
  factory _$$_MinorListModelCopyWith(
          _$_MinorListModel value, $Res Function(_$_MinorListModel) then) =
      __$$_MinorListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String checkId,
      String listId,
      String icon,
      String content,
      bool isDone,
      bool isDeleted,
      @CreatedAtField() DateTime? createdAt,
      @UpdatedAtField() DateTime? updatedAt});
}

/// @nodoc
class __$$_MinorListModelCopyWithImpl<$Res>
    extends _$MinorListModelCopyWithImpl<$Res, _$_MinorListModel>
    implements _$$_MinorListModelCopyWith<$Res> {
  __$$_MinorListModelCopyWithImpl(
      _$_MinorListModel _value, $Res Function(_$_MinorListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkId = null,
    Object? listId = null,
    Object? icon = null,
    Object? content = null,
    Object? isDone = null,
    Object? isDeleted = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_MinorListModel(
      checkId: null == checkId
          ? _value.checkId
          : checkId // ignore: cast_nullable_to_non_nullable
              as String,
      listId: null == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$_MinorListModel implements _MinorListModel {
  const _$_MinorListModel(
      {required this.checkId,
      required this.listId,
      required this.icon,
      required this.content,
      required this.isDone,
      required this.isDeleted,
      @CreatedAtField() this.createdAt,
      @UpdatedAtField() this.updatedAt});

  factory _$_MinorListModel.fromJson(Map<String, dynamic> json) =>
      _$$_MinorListModelFromJson(json);

  @override
  final String checkId;
  @override
  final String listId;
  @override
  final String icon;
  @override
  final String content;
  @override
  final bool isDone;
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
    return 'MinorListModel(checkId: $checkId, listId: $listId, icon: $icon, content: $content, isDone: $isDone, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MinorListModel &&
            (identical(other.checkId, checkId) || other.checkId == checkId) &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, checkId, listId, icon, content,
      isDone, isDeleted, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MinorListModelCopyWith<_$_MinorListModel> get copyWith =>
      __$$_MinorListModelCopyWithImpl<_$_MinorListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MinorListModelToJson(
      this,
    );
  }
}

abstract class _MinorListModel implements MinorListModel {
  const factory _MinorListModel(
      {required final String checkId,
      required final String listId,
      required final String icon,
      required final String content,
      required final bool isDone,
      required final bool isDeleted,
      @CreatedAtField() final DateTime? createdAt,
      @UpdatedAtField() final DateTime? updatedAt}) = _$_MinorListModel;

  factory _MinorListModel.fromJson(Map<String, dynamic> json) =
      _$_MinorListModel.fromJson;

  @override
  String get checkId;
  @override
  String get listId;
  @override
  String get icon;
  @override
  String get content;
  @override
  bool get isDone;
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
  _$$_MinorListModelCopyWith<_$_MinorListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
