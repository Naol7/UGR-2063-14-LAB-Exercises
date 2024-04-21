import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

final counterProvider = StateProvider((ref) => 0);

final incrementCounter =
    Provider((ref) => () => ref.read(counterProvider.notifier).state++);

final decrementCounter =
    Provider((ref) => () => ref.read(counterProvider.notifier).state--);

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: ref.read(incrementCounter),
                  child: const Text('Increment'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: ref.read(decrementCounter),
                  child: const Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
