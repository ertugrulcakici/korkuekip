import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:korkuekip/product/widgets/my_text.dart';
import 'package:korkuekip/view/konseptler/konseptler_notifier.dart';

class KonseptlerView extends ConsumerStatefulWidget {
  const KonseptlerView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _KonseptlerViewState();
}

class _KonseptlerViewState extends ConsumerState<KonseptlerView> {
  final ChangeNotifierProvider<KonseptlerNotifier> provider =
      ChangeNotifierProvider((ref) => KonseptlerNotifier());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MyText("Konseptler"),
      ),
    );
  }
}
