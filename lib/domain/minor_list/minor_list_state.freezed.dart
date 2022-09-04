// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'minor_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MinorListState {
  List<MinorListModel> get minorList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MinorListStateCopyWith<MinorListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinorListStateCopyWith<$Res> {
  factory $MinorListStateCopyWith(
          MinorListState value, $Res Function(MinorListState) then) =
      _$MinorListStateCopyWithImpl<$Res>;
  $Res call({List<MinorListModel> minorList});
}

/// @nodoc
class _$MinorListStateCopyWithImpl<$Res>
    implements $MinorListStateCopyWith<$Res> {
  _$MinorListStateCopyWithImpl(this._value, this._then);

  final MinorListState _value;
  // ignore: unused_field
  final $Res Function(MinorListState) _then;

  @override
  $Res call({
    Object? minorList = freezed,
  }) {
    return _then(_value.copyWith(
      minorList: minorList == freezed
          ? _value.minorList
          : minorList // ignore: cast_nullable_to_non_nullable
              as List<MinorListModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_MinorListStateCopyWith<$Res>
    implements $MinorListStateCopyWith<$Res> {
  factory _$$_MinorListStateCopyWith(
          _$_MinorListState value, $Res Function(_$_MinorListState) then) =
      __$$_MinorListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<MinorListModel> minorList});
}

/// @nodoc
class __$$_MinorListStateCopyWithImpl<$Res>
    extends _$MinorListStateCopyWithImpl<$Res>
    implements _$$_MinorListStateCopyWith<$Res> {
  __$$_MinorListStateCopyWithImpl(
      _$_MinorListState _value, $Res Function(_$_MinorListState) _then)
      : super(_value, (v) => _then(v as _$_MinorListState));

  @override
  _$_MinorListState get _value => super._value as _$_MinorListState;

  @override
  $Res call({
    Object? minorList = freezed,
  }) {
    return _then(_$_MinorListState(
      minorList: minorList == freezed
          ? _value._minorList
          : minorList // ignore: cast_nullable_to_non_nullable
              as List<MinorListModel>,
    ));
  }
}

/// @nodoc

class _$_MinorListState implements _MinorListState {
  const _$_MinorListState(
      {final List<MinorListModel> minorList = const <MinorListModel>[]})
      : _minorList = minorList;

  final List<MinorListModel> _minorList;
  @override
  @JsonKey()
  List<MinorListModel> get minorList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_minorList);
  }

  @override
  String toString() {
    return 'MinorListState(minorList: $minorList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MinorListState &&
            const DeepCollectionEquality()
                .equals(other._minorList, _minorList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_minorList));

  @JsonKey(ignore: true)
  @override
  _$$_MinorListStateCopyWith<_$_MinorListState> get copyWith =>
      __$$_MinorListStateCopyWithImpl<_$_MinorListState>(this, _$identity);
}

abstract class _MinorListState implements MinorListState {
  const factory _MinorListState({final List<MinorListModel> minorList}) =
      _$_MinorListState;

  @override
  List<MinorListModel> get minorList;
  @override
  @JsonKey(ignore: true)
  _$$_MinorListStateCopyWith<_$_MinorListState> get copyWith =>
      throw _privateConstructorUsedError;
}
