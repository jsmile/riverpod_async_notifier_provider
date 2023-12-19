import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/ansi_color_debug.dart';

class CounterNotifier extends AsyncNotifier<int> {
  // @override
  // FutureOr<int> build() async {   // async 사용
  //   ref.onDispose(
  //     () {
  //       debugPrint(info('### CounterNotifier disposed'));
  //     },
  //   );
  //   await waitSecond();

  //   debugPrint(info('### CounterNotifier initialized'));
  //   return 0; // initial state 로 emmit 하게됨( AsyncLoading + AsyncData ).
  // }

  /// build 에 async 를 사용하지 않고 FutureOr 를 사용
  @override
  FutureOr<int> build() {
    ref.onDispose(
      () {
        debugPrint(info('### CounterNotifier disposed'));
      },
    );

    debugPrint(info('### CounterNotifier initialized'));
    // loading state 없이 바로 data state 로 emmit 하게됨( AsyncData ).
    return 0;
    // // loading state 이후에 data state 로 emmit 하게됨( AsyncLoading + AsyncData ).
    // return Future.value(0);
  }

  Future<void> waitSecond() => Future.delayed(const Duration(seconds: 1));

  Future<void> increment() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(
      () async {
        await waitSecond();
        // if (state.value != 2) throw 'Fail to increment';
        return state.value! + 1; // value 자체를 return 하면 AsyncData 로 emmit 됨.
      },
    );

    // try {
    //   await waitSecond();
    //   // throw 'Fail to increment';
    //   state = AsyncData(state.value! + 1); // state.value 는 AsyncData 의 이전 value
    // } catch (error, stackTrace) {
    //   state = AsyncError(error, stackTrace);
    // }
  }

  Future<void> decrement() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(
      () async {
        await waitSecond();
        // throw 'Fail to increment';
        return state.value! - 1; // value 자체를 return 하면 AsyncData 로 emmit 됨.
      },
    );

    // await waitSecond();
    // state = AsyncData(state.value! - 1); // state.value 는 AsyncData 의 이전 value
  }
}

final counterNotiProvider =
    AsyncNotifierProvider<CounterNotifier, int>(CounterNotifier.new);
