import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:korkuekip/product/constants/static_data.dart';
import 'package:korkuekip/product/widgets/landing_page/landing_page.dart';
import 'package:korkuekip/product/widgets/my_text.dart';

class SSSView extends ConsumerStatefulWidget {
  const SSSView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SSSViewState();
}

class _SSSViewState extends ConsumerState<SSSView> {
  @override
  Widget build(BuildContext context) {
    final headerFont = Theme.of(context).textTheme.titleLarge!.copyWith(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        );
    const bodyFont = TextStyle(fontSize: 20);

    return Scaffold(
      body: LandingPage(
        innerWidget: Column(
          children: StaticData.sssMetinleri.entries
              .map(
                (entry) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      MyText(
                        entry.key,
                        style: headerFont,
                      ),
                      MyText(
                        entry.value,
                        style: bodyFont,
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
