// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'minor_list_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MinorListHistoryState {
  List<MinorListModel> get minorHistoryList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MinorListHistoryStateCopyWith<MinorListHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinorListHistoryStateCopyWith<$Res> {
  factory $MinorListHistoryStateCopyWith(MinorListHistoryState value,
          $Res Function(MinorListHistoryState) then) =
      _$MinorListHistoryStateCopyWithImpl<$Res>;
  $Res call({List<MinorListModel> minorHistoryList});
}

/// @nodoc
class _$MinorListHistoryStateCopyWithImpl<$Res>
    implements $MinorListHistoryStateCopyWith<$Res> {
  _$MinorListHistoryStateCopyWithImpl(this._value, this._then);

  final MinorListHistoryState _value;
  // ignore: unused_field
  final $Res Function(MinorListHistoryState) _then;

  @override
  $Res call({
    Object? minorHistoryList = freezed,
  }) {
    return _then(_value.copyWith(
      minorHistoryList: minorHistoryList == freezed
          ? _value.minorHistoryList
          : minorHistoryList // ignore: cast_nullable_to_non_nullable
              as List<MinorListModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_MinorListHistoryStateCopyWith<$Res>
    implements $MinorListHistoryStateCopyWith<$Res> {
  factory _$$_MinorListHistoryStateCopyWith(_$_MinorListHistoryState value,
          $Res Function(_$_MinorListHistoryState) then) =
      __$$_MinorListHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({List<MinorListModel> minorHistoryList});
}

/// @nodoc
class __$$_MinorListHistoryStateCopyWithImpl<$Res>
    extends _$MinorListHistoryStateCopyWithImpl<$Res>
    implements _$$_MinorListHistoryStateCopyWith<$Res> {
  __$$_MinorListHistoryStateCopyWithImpl(_$_MinorListHistoryState _value,
      $Res Function(_$_MinorListHistoryState) _then)
      : super(_value, (v) => _then(v as _$_MinorListHistoryState));

  @override
  _$_MinorListHistoryState get _value =>
      super._value as _$_MinorListHistoryState;

  @override
  $Res call({
    Object? minorHistoryList = freezed,
  }) {
    return _then(_$_MinorListHistoryState(
      minorHistoryList: minorHistoryList == freezed
          ? _value._minorHistoryList
          : minorHistoryList // ignore: cast_nullable_to_non_nullable
              as List<MinorListModel>,
    ));
  }
}

/// @nodoc

class _$_MinorListHistoryState implements _MinorListHistoryState {
  const _$_MinorListHistoryState(
      {final List<MinorListModel> minorHistoryList = const <MinorListModel>[]})
      : _minorHistoryList = minorHistoryList;

  final List<MinorListModel> _minorHistoryList;
  @override
  @JsonKey()
  List<MinorListModel> get minorHistoryList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_minorHistoryList);
  }

  @override
  String toString() {
    return 'MinorListHistoryState(minorHistoryList: $minorHistoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MinorListHistoryState &&
            const DeepCollectionEquality()
                .equals(other._minorHistoryList, _minorHistoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_minorHistoryList));

  @JsonKey(ignore: true)
  @override
  _$$_MinorListHistoryStateCopyWith<_$_MinorListHistoryState> get copyWith =>
      __$$_MinorListHistoryStateCopyWithImpl<_$_MinorListHistoryState>(
          this, _$identity);
}

abstract class _MinorListHistoryState implements MinorListHistoryState {
  const factory _MinorListHistoryState(
      {final List<MinorListModel> minorHistoryList}) = _$_MinorListHistoryState;

  @override
  List<MinorListModel> get minorHistoryList;
  @override
  @JsonKey(ignore: true)
  _$$_MinorListHistoryStateCopyWith<_$_MinorListHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
