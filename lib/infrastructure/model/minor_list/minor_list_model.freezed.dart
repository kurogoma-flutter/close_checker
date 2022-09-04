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
      _$MinorListModelCopyWithImpl<$Res>;
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
class _$MinorListModelCopyWithImpl<$Res>
    implements $MinorListModelCopyWith<$Res> {
  _$MinorListModelCopyWithImpl(this._value, this._then);

  final MinorListModel _value;
  // ignore: unused_field
  final $Res Function(MinorListModel) _then;

  @override
  $Res call({
    Object? checkId = freezed,
    Object? listId = freezed,
    Object? icon = freezed,
    Object? content = freezed,
    Object? isDone = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      checkId: checkId == freezed
          ? _value.checkId
          : checkId // ignore: cast_nullable_to_non_nullable
              as String,
      listId: listId == freezed
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_MinorListModelCopyWith<$Res>
    implements $MinorListModelCopyWith<$Res> {
  factory _$$_MinorListModelCopyWith(
          _$_MinorListModel value, $Res Function(_$_MinorListModel) then) =
      __$$_MinorListModelCopyWithImpl<$Res>;
  @override
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
    extends _$MinorListModelCopyWithImpl<$Res>
    implements _$$_MinorListModelCopyWith<$Res> {
  __$$_MinorListModelCopyWithImpl(
      _$_MinorListModel _value, $Res Function(_$_MinorListModel) _then)
      : super(_value, (v) => _then(v as _$_MinorListModel));

  @override
  _$_MinorListModel get _value => super._value as _$_MinorListModel;

  @override
  $Res call({
    Object? checkId = freezed,
    Object? listId = freezed,
    Object? icon = freezed,
    Object? content = freezed,
    Object? isDone = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_MinorListModel(
      checkId: checkId == freezed
          ? _value.checkId
          : checkId // ignore: cast_nullable_to_non_nullable
              as String,
      listId: listId == freezed
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: isDeleted == freezed
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
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
            const DeepCollectionEquality().equals(other.checkId, checkId) &&
            const DeepCollectionEquality().equals(other.listId, listId) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.isDone, isDone) &&
            const DeepCollectionEquality().equals(other.isDeleted, isDeleted) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(checkId),
      const DeepCollectionEquality().hash(listId),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(isDone),
      const DeepCollectionEquality().hash(isDeleted),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
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
