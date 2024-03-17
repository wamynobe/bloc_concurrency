part of 'test_bloc.dart';

@freezed
class TestEvent with _$TestEvent {
  const factory TestEvent.init() = _Init;
  const factory TestEvent.fetchMore(
    String query,
    Completer<void> isDone,
  ) = _FetchMore;
  const factory TestEvent.filter(
    String query,
  ) = _Filter;
}
