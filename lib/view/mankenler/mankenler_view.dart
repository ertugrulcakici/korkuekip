import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MankenlerView extends ConsumerStatefulWidget {
  const MankenlerView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MankenlerViewState();
}

class _MankenlerViewState extends ConsumerState<MankenlerView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Mankenler"),
      ),
    );
  }
}
