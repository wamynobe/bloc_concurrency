part of 'test_bloc.dart';

enum Status { initial, loading, success, failure }

@freezed
class TestState with _$TestState {
  const factory TestState({
    @Default(Status.initial) Status status,
    @Default([]) List<String> data,
    @Default(0) int total,
    String? query,
  }) = _TestState;
}
