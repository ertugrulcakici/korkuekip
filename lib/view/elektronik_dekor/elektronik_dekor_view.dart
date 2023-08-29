import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ElektronikDekorView extends ConsumerStatefulWidget {
  const ElektronikDekorView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ElektronikDekorViewState();
}

class _ElektronikDekorViewState extends ConsumerState<ElektronikDekorView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Elektronik Dekor"),
      ),
    );
  }
}
