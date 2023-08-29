import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:korkuekip/product/widgets/landing_page/landing_page.dart';
import 'package:korkuekip/view/home/home_notifier.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  ChangeNotifierProvider<HomeNotifier> provider =
      ChangeNotifierProvider((ref) => HomeNotifier());

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(provider).getHomeData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body());
  }

  Widget _body() {
    return LandingPage(innerWidget: Container());
  }
}
