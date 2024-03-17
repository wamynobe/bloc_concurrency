// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query, Completer<void> isDone) fetchMore,
    required TResult Function(String query) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query, Completer<void> isDone)? fetchMore,
    TResult? Function(String query)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query, Completer<void> isDone)? fetchMore,
    TResult Function(String query)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchMore value) fetchMore,
    required TResult Function(_Filter value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_FetchMore value)? fetchMore,
    TResult? Function(_Filter value)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchMore value)? fetchMore,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestEventCopyWith<$Res> {
  factory $TestEventCopyWith(TestEvent value, $Res Function(TestEvent) then) =
      _$TestEventCopyWithImpl<$Res, TestEvent>;
}

/// @nodoc
class _$TestEventCopyWithImpl<$Res, $Val extends TestEvent>
    implements $TestEventCopyWith<$Res> {
  _$TestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'TestEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query, Completer<void> isDone) fetchMore,
    required TResult Function(String query) filter,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query, Completer<void> isDone)? fetchMore,
    TResult? Function(String query)? filter,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query, Completer<void> isDone)? fetchMore,
    TResult Function(String query)? filter,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchMore value) fetchMore,
    required TResult Function(_Filter value) filter,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_FetchMore value)? fetchMore,
    TResult? Function(_Filter value)? filter,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchMore value)? fetchMore,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements TestEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$FetchMoreImplCopyWith<$Res> {
  factory _$$FetchMoreImplCopyWith(
          _$FetchMoreImpl value, $Res Function(_$FetchMoreImpl) then) =
      __$$FetchMoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, Completer<void> isDone});
}

/// @nodoc
class __$$FetchMoreImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$FetchMoreImpl>
    implements _$$FetchMoreImplCopyWith<$Res> {
  __$$FetchMoreImplCopyWithImpl(
      _$FetchMoreImpl _value, $Res Function(_$FetchMoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? isDone = null,
  }) {
    return _then(_$FetchMoreImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as Completer<void>,
    ));
  }
}

/// @nodoc

class _$FetchMoreImpl implements _FetchMore {
  const _$FetchMoreImpl(this.query, this.isDone);

  @override
  final String query;
  @override
  final Completer<void> isDone;

  @override
  String toString() {
    return 'TestEvent.fetchMore(query: $query, isDone: $isDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMoreImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMoreImplCopyWith<_$FetchMoreImpl> get copyWith =>
      __$$FetchMoreImplCopyWithImpl<_$FetchMoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query, Completer<void> isDone) fetchMore,
    required TResult Function(String query) filter,
  }) {
    return fetchMore(query, isDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query, Completer<void> isDone)? fetchMore,
    TResult? Function(String query)? filter,
  }) {
    return fetchMore?.call(query, isDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query, Completer<void> isDone)? fetchMore,
    TResult Function(String query)? filter,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(query, isDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchMore value) fetchMore,
    required TResult Function(_Filter value) filter,
  }) {
    return fetchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_FetchMore value)? fetchMore,
    TResult? Function(_Filter value)? filter,
  }) {
    return fetchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchMore value)? fetchMore,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(this);
    }
    return orElse();
  }
}

abstract class _FetchMore implements TestEvent {
  const factory _FetchMore(final String query, final Completer<void> isDone) =
      _$FetchMoreImpl;

  String get query;
  Completer<void> get isDone;
  @JsonKey(ignore: true)
  _$$FetchMoreImplCopyWith<_$FetchMoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterImplCopyWith<$Res> {
  factory _$$FilterImplCopyWith(
          _$FilterImpl value, $Res Function(_$FilterImpl) then) =
      __$$FilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$FilterImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$FilterImpl>
    implements _$$FilterImplCopyWith<$Res> {
  __$$FilterImplCopyWithImpl(
      _$FilterImpl _value, $Res Function(_$FilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$FilterImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterImpl implements _Filter {
  const _$FilterImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'TestEvent.filter(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      __$$FilterImplCopyWithImpl<_$FilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query, Completer<void> isDone) fetchMore,
    required TResult Function(String query) filter,
  }) {
    return filter(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query, Completer<void> isDone)? fetchMore,
    TResult? Function(String query)? filter,
  }) {
    return filter?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query, Completer<void> isDone)? fetchMore,
    TResult Function(String query)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchMore value) fetchMore,
    required TResult Function(_Filter value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_FetchMore value)? fetchMore,
    TResult? Function(_Filter value)? filter,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchMore value)? fetchMore,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _Filter implements TestEvent {
  const factory _Filter(final String query) = _$FilterImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TestState {
  Status get status => throw _privateConstructorUsedError;
  List<String> get data => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestStateCopyWith<TestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestStateCopyWith<$Res> {
  factory $TestStateCopyWith(TestState value, $Res Function(TestState) then) =
      _$TestStateCopyWithImpl<$Res, TestState>;
  @useResult
  $Res call({Status status, List<String> data, int total, String? query});
}

/// @nodoc
class _$TestStateCopyWithImpl<$Res, $Val extends TestState>
    implements $TestStateCopyWith<$Res> {
  _$TestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? total = null,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestStateImplCopyWith<$Res>
    implements $TestStateCopyWith<$Res> {
  factory _$$TestStateImplCopyWith(
          _$TestStateImpl value, $Res Function(_$TestStateImpl) then) =
      __$$TestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<String> data, int total, String? query});
}

/// @nodoc
class __$$TestStateImplCopyWithImpl<$Res>
    extends _$TestStateCopyWithImpl<$Res, _$TestStateImpl>
    implements _$$TestStateImplCopyWith<$Res> {
  __$$TestStateImplCopyWithImpl(
      _$TestStateImpl _value, $Res Function(_$TestStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? total = null,
    Object? query = freezed,
  }) {
    return _then(_$TestStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TestStateImpl implements _TestState {
  const _$TestStateImpl(
      {this.status = Status.initial,
      final List<String> data = const [],
      this.total = 0,
      this.query})
      : _data = data;

  @override
  @JsonKey()
  final Status status;
  final List<String> _data;
  @override
  @JsonKey()
  List<String> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final int total;
  @override
  final String? query;

  @override
  String toString() {
    return 'TestState(status: $status, data: $data, total: $total, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_data), total, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestStateImplCopyWith<_$TestStateImpl> get copyWith =>
      __$$TestStateImplCopyWithImpl<_$TestStateImpl>(this, _$identity);
}

abstract class _TestState implements TestState {
  const factory _TestState(
      {final Status status,
      final List<String> data,
      final int total,
      final String? query}) = _$TestStateImpl;

  @override
  Status get status;
  @override
  List<String> get data;
  @override
  int get total;
  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$TestStateImplCopyWith<_$TestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
