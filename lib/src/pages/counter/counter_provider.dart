import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/ansi_color_debug.dart';

class CounterNotifier extends AsyncNotifier<int> {
  @override
  FutureOr<int> build() async {
    ref.onDispose(
      () {
        debugPrint(info('### CounterNotifier disposed'));
      },
    );
    await waitSecond();

    debugPrint(info('### CounterNotifier initialized'));
    return 0; // initial state 로 emmit 하게됨( AsyncLoading + AsyncData ).
  }

  Future<void> waitSecond() => Future.delayed(const Duration(seconds: 1));

  Future<void> increment() async {
    state = const AsyncLoading();

    try {
      await waitSecond();
      // throw 'Fail to increment';
      state = AsyncData(state.value! + 1); // state.value 는 AsyncData 의 이전 value
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  Future<void> decrement() async {
    state = const AsyncLoading();

    await waitSecond();
    state = AsyncData(state.value! - 1); // state.value 는 AsyncData 의 이전 value
  }
}

final counterNotiProvider =
    AsyncNotifierProvider<CounterNotifier, int>(CounterNotifier.new);
