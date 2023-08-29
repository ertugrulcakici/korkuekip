import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ElektronikSifrelerView extends ConsumerStatefulWidget {
  const ElektronikSifrelerView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ElektronikSifrelerViewState();
}

class _ElektronikSifrelerViewState
    extends ConsumerState<ElektronikSifrelerView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Elektronik Şifreler"),
      ),
    );
  }
}
