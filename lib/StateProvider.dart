//state provider - stores simple mutuable objects like string ,int,enum

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) {
  return 0;
});

class Page extends ConsumerWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('appbar'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Text(count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(counterProvider.notifier).state++;
          ref.read(counterProvider.notifier).update(
              (state) => state + 1); //ref.read reads the value only once
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
