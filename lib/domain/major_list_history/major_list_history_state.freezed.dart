// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'major_list_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MajorListHistoryState {
  List<MajorListModel> get majorHistoryList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MajorListHistoryStateCopyWith<MajorListHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MajorListHistoryStateCopyWith<$Res> {
  factory $MajorListHistoryStateCopyWith(MajorListHistoryState value,
          $Res Function(MajorListHistoryState) then) =
      _$MajorListHistoryStateCopyWithImpl<$Res>;
  $Res call({List<MajorListModel> majorHistoryList});
}

/// @nodoc
class _$MajorListHistoryStateCopyWithImpl<$Res>
    implements $MajorListHistoryStateCopyWith<$Res> {
  _$MajorListHistoryStateCopyWithImpl(this._value, this._then);

  final MajorListHistoryState _value;
  // ignore: unused_field
  final $Res Function(MajorListHistoryState) _then;

  @override
  $Res call({
    Object? majorHistoryList = freezed,
  }) {
    return _then(_value.copyWith(
      majorHistoryList: majorHistoryList == freezed
          ? _value.majorHistoryList
          : majorHistoryList // ignore: cast_nullable_to_non_nullable
              as List<MajorListModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_MajorListHistoryStateCopyWith<$Res>
    implements $MajorListHistoryStateCopyWith<$Res> {
  factory _$$_MajorListHistoryStateCopyWith(_$_MajorListHistoryState value,
          $Res Function(_$_MajorListHistoryState) then) =
      __$$_MajorListHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({List<MajorListModel> majorHistoryList});
}

/// @nodoc
class __$$_MajorListHistoryStateCopyWithImpl<$Res>
    extends _$MajorListHistoryStateCopyWithImpl<$Res>
    implements _$$_MajorListHistoryStateCopyWith<$Res> {
  __$$_MajorListHistoryStateCopyWithImpl(_$_MajorListHistoryState _value,
      $Res Function(_$_MajorListHistoryState) _then)
      : super(_value, (v) => _then(v as _$_MajorListHistoryState));

  @override
  _$_MajorListHistoryState get _value =>
      super._value as _$_MajorListHistoryState;

  @override
  $Res call({
    Object? majorHistoryList = freezed,
  }) {
    return _then(_$_MajorListHistoryState(
      majorHistoryList: majorHistoryList == freezed
          ? _value._majorHistoryList
          : majorHistoryList // ignore: cast_nullable_to_non_nullable
              as List<MajorListModel>,
    ));
  }
}

/// @nodoc

class _$_MajorListHistoryState implements _MajorListHistoryState {
  const _$_MajorListHistoryState(
      {final List<MajorListModel> majorHistoryList = const <MajorListModel>[]})
      : _majorHistoryList = majorHistoryList;

  final List<MajorListModel> _majorHistoryList;
  @override
  @JsonKey()
  List<MajorListModel> get majorHistoryList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_majorHistoryList);
  }

  @override
  String toString() {
    return 'MajorListHistoryState(majorHistoryList: $majorHistoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MajorListHistoryState &&
            const DeepCollectionEquality()
                .equals(other._majorHistoryList, _majorHistoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_majorHistoryList));

  @JsonKey(ignore: true)
  @override
  _$$_MajorListHistoryStateCopyWith<_$_MajorListHistoryState> get copyWith =>
      __$$_MajorListHistoryStateCopyWithImpl<_$_MajorListHistoryState>(
          this, _$identity);
}

abstract class _MajorListHistoryState implements MajorListHistoryState {
  const factory _MajorListHistoryState(
      {final List<MajorListModel> majorHistoryList}) = _$_MajorListHistoryState;

  @override
  List<MajorListModel> get majorHistoryList;
  @override
  @JsonKey(ignore: true)
  _$$_MajorListHistoryStateCopyWith<_$_MajorListHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
