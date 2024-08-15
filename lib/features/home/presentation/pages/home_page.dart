import 'package:calculation/core/functions/show_bottom_sheet.dart';
import 'package:calculation/features/home/domain/model/main_model.dart';
import 'package:calculation/features/production/domain/model/production_model.dart';
import 'package:calculation/features/home/domain/model/sallry_model.dart';
import 'package:calculation/features/home/presentation/widgets/bottom_sheet_body.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  MainModel mainModel = MainModel(
      name: "دبدوب",
      sales: salesModel(
          sales: 5,
          salesDate: DateTime(2024, 4, 2),
          orderId: 1300,
          notes: "",
          clientName: "عبدو"),
      production: ProductionModel(
          notes: "", weight: 0.0, date: DateTime(2024, 4, 2), count: 400));
  int count = 0;
  @override
  Widget build(BuildContext context) {
    DatabaseReference ref =
        FirebaseDatabase.instance.ref("users/${mainModel.name}");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // await ref.set(mainModel.tojson());
          ShowBottomSheet.showBottomSheet(
            context,
            child: const BottomSheetBody(),
            initSize: 0.4,
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const HomePageBody(),
    );
  }
}
