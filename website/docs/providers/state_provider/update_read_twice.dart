import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

/* SNIPPET START */

final counterProvider = StateProvider<int>((ref) => 0);

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // We're updating the state from the previous value, we ended-up reading
          // the provider twice!
          ref.read(counterProvider.notifier).state =
              ref.read(counterProvider.notifier).state + 1;
        },
      ),
    );
  }
}
