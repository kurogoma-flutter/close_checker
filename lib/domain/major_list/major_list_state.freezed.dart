// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'major_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MajorListState {
  List<MajorListModel> get majorList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MajorListStateCopyWith<MajorListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MajorListStateCopyWith<$Res> {
  factory $MajorListStateCopyWith(
          MajorListState value, $Res Function(MajorListState) then) =
      _$MajorListStateCopyWithImpl<$Res, MajorListState>;
  @useResult
  $Res call({List<MajorListModel> majorList});
}

/// @nodoc
class _$MajorListStateCopyWithImpl<$Res, $Val extends MajorListState>
    implements $MajorListStateCopyWith<$Res> {
  _$MajorListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? majorList = null,
  }) {
    return _then(_value.copyWith(
      majorList: null == majorList
          ? _value.majorList
          : majorList // ignore: cast_nullable_to_non_nullable
              as List<MajorListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MajorListStateCopyWith<$Res>
    implements $MajorListStateCopyWith<$Res> {
  factory _$$_MajorListStateCopyWith(
          _$_MajorListState value, $Res Function(_$_MajorListState) then) =
      __$$_MajorListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MajorListModel> majorList});
}

/// @nodoc
class __$$_MajorListStateCopyWithImpl<$Res>
    extends _$MajorListStateCopyWithImpl<$Res, _$_MajorListState>
    implements _$$_MajorListStateCopyWith<$Res> {
  __$$_MajorListStateCopyWithImpl(
      _$_MajorListState _value, $Res Function(_$_MajorListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? majorList = null,
  }) {
    return _then(_$_MajorListState(
      majorList: null == majorList
          ? _value._majorList
          : majorList // ignore: cast_nullable_to_non_nullable
              as List<MajorListModel>,
    ));
  }
}

/// @nodoc

class _$_MajorListState implements _MajorListState {
  const _$_MajorListState(
      {final List<MajorListModel> majorList = const <MajorListModel>[]})
      : _majorList = majorList;

  final List<MajorListModel> _majorList;
  @override
  @JsonKey()
  List<MajorListModel> get majorList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_majorList);
  }

  @override
  String toString() {
    return 'MajorListState(majorList: $majorList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MajorListState &&
            const DeepCollectionEquality()
                .equals(other._majorList, _majorList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_majorList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MajorListStateCopyWith<_$_MajorListState> get copyWith =>
      __$$_MajorListStateCopyWithImpl<_$_MajorListState>(this, _$identity);
}

abstract class _MajorListState implements MajorListState {
  const factory _MajorListState({final List<MajorListModel> majorList}) =
      _$_MajorListState;

  @override
  List<MajorListModel> get majorList;
  @override
  @JsonKey(ignore: true)
  _$$_MajorListStateCopyWith<_$_MajorListState> get copyWith =>
      throw _privateConstructorUsedError;
}
