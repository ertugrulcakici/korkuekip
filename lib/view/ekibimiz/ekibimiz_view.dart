import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:korkuekip/product/widgets/landing_page/landing_page.dart';
import 'package:korkuekip/product/widgets/my_text.dart';
import 'package:korkuekip/view/ekibimiz/staff_model.dart';

class EkibimizView extends ConsumerStatefulWidget {
  const EkibimizView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EkibimizViewState();
}

class _EkibimizViewState extends ConsumerState<EkibimizView> {
  final staffList = List.generate(5, (index) => StaffModel.example());
  final _myListKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LandingPage(
          innerWidget: ListView.builder(
        key: _myListKey,
        itemCount: staffList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final StaffModel staff = staffList[index];
          return AspectRatio(
            aspectRatio: 3 / 4,
            child: Card(
              child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(staff.imageUri)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyText(
                        staff.name,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      const SizedBox(height: 10),
                      MyText(
                        staff.title,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  )),
            ),
          );
        },
      )),
    );
  }
}
