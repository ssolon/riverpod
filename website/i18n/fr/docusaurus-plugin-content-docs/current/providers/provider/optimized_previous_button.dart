// A provider that controls the current page
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

/* SNIPPET START */

final pageIndexProvider = StateProvider<int>((ref) => 0);

// Un provider qui calcule si l'utilisateur est autorisé à aller à la page précédente.

/* highlight-start */
final canGoToPreviousPageProvider = Provider<bool>((ref) {
/* highlight-end */
  return ref.watch(pageIndexProvider) != 0;
});

class PreviousButton extends ConsumerWidget {
  const PreviousButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // On regarde maintenant notre nouveau Provider
    // Notre widget ne calcule plus si on peut aller à la page précédente.

    /* highlight-start */
    final canGoToPreviousPage = ref.watch(canGoToPreviousPageProvider);
    /* highlight-end */

    void goToPreviousPage() {
      ref.read(pageIndexProvider.notifier).update((state) => state - 1);
    }

    return ElevatedButton(
      onPressed: canGoToPreviousPage ? goToPreviousPage : null,
      child: const Text('previous'),
    );
  }
}
