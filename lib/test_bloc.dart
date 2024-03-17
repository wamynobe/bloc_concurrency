import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_event.dart';
part 'test_state.dart';
part 'test_bloc.freezed.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc() : super(const TestState()) {
    on<TestEvent>(
      (event, emit) async {
        await event.when(
          init: () {
            emit(state.copyWith(status: Status.success, data: mockData));
          },
          filter: (query) async {
            await _filter(query);
          },
          fetchMore: (query, isDone) async {
            await _fetchMore(query, emit);
            isDone.complete();
          },
        );
      },
    );
  }

  final mockData = [
    'Data 66',
    'Data 661',
    'Data 662',
    'Data 663',
    'Data 664',
    'Data 665',
    'Data 666',
    'Data 667',
    'Data 668',
    'Data 669',
    'Data 660',
    'Data 77',
    'Data 771',
    'Data 772',
    'Data 773',
  ];

  final mockMore = [
    'Data 99',
    'Data 991',
    'Data 992',
    'Data 993',
    'Data 994',
    'Data 995',
    'Data 996',
    'Data 997',
    'Data 998',
    'Data 999',
    'Data 990',
  ];

  Future<void> _filter(String filter) async {
    emit(state.copyWith(status: Status.loading, query: filter));
    final data = await _fetchData(timeToFetch: 3, query: filter);
    emit(state.copyWith(status: Status.success, data: data));
  }

  Future<void> _fetchMore(String query, Emitter<TestState> emitter) async {
    emit(state.copyWith(query: query));
    final data = await _fetchData(
      timeToFetch: 5,
      query: query,
    );
    final more = mockMore;
    emit(state.copyWith(status: Status.success, data: more..addAll(data)));
  }

  Future<List<String>> _fetchData({
    required int timeToFetch,
    String query = '',
  }) async {
    await Future.delayed(Duration(seconds: timeToFetch));
    return mockData.where((element) => element.contains(query)).toList();
  }
}
