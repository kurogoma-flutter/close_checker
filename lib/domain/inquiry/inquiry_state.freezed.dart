// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inquiry_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InquiryState {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InquiryStateCopyWith<InquiryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InquiryStateCopyWith<$Res> {
  factory $InquiryStateCopyWith(
          InquiryState value, $Res Function(InquiryState) then) =
      _$InquiryStateCopyWithImpl<$Res, InquiryState>;
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class _$InquiryStateCopyWithImpl<$Res, $Val extends InquiryState>
    implements $InquiryStateCopyWith<$Res> {
  _$InquiryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InquiryStateCopyWith<$Res>
    implements $InquiryStateCopyWith<$Res> {
  factory _$$_InquiryStateCopyWith(
          _$_InquiryState value, $Res Function(_$_InquiryState) then) =
      __$$_InquiryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class __$$_InquiryStateCopyWithImpl<$Res>
    extends _$InquiryStateCopyWithImpl<$Res, _$_InquiryState>
    implements _$$_InquiryStateCopyWith<$Res> {
  __$$_InquiryStateCopyWithImpl(
      _$_InquiryState _value, $Res Function(_$_InquiryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$_InquiryState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InquiryState implements _InquiryState {
  const _$_InquiryState({this.title = '選択してください', this.content = ''});

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String content;

  @override
  String toString() {
    return 'InquiryState(title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InquiryState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InquiryStateCopyWith<_$_InquiryState> get copyWith =>
      __$$_InquiryStateCopyWithImpl<_$_InquiryState>(this, _$identity);
}

abstract class _InquiryState implements InquiryState {
  const factory _InquiryState({final String title, final String content}) =
      _$_InquiryState;

  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_InquiryStateCopyWith<_$_InquiryState> get copyWith =>
      throw _privateConstructorUsedError;
}
