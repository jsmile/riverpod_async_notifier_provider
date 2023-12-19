import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/ansi_color_debug.dart';
import 'counter_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterNotiProvider);
    debugPrint(success('### counter : $counter'));

    // debugPrint(
    //   success(
    //       '### isLoading: ${counter.isLoading}, isRefreshing: ${counter.isRefreshing}, isReloading: ${counter.isReloading}'),
    // );
    // debugPrint(
    //   success(
    //       '*** hasValue: ${counter.hasValue}, hasError: ${counter.hasError}'),
    // );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: counter.when(
          skipLoadingOnRefresh: false,
          data: (count) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$count',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                      heroTag: 'decrement',
                      onPressed: () {
                        ref.read(counterNotiProvider.notifier).decrement();
                      },
                      child: const Icon(Icons.remove),
                    ),
                    FloatingActionButton(
                      heroTag: 'increment',
                      onPressed: () {
                        ref.read(counterNotiProvider.notifier).increment();
                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            );
          },
          error: (e, st) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  e.toString(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 20.0),
                OutlinedButton(
                  onPressed: () {
                    ref.invalidate(counterNotiProvider);
                  },
                  child: Text(
                    'Refresh',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            );
          },
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
