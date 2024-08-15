// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:calculation/core/functions/show_bottom_sheet.dart';
import 'package:calculation/features/production/presentation/widgets/bottom_sheet_body_production.dart';
import 'package:flutter/material.dart';

import '../widgets/production_body.dart';

class ProductionPage extends StatelessWidget {
  const ProductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            ShowBottomSheet.showBottomSheet(context,
                child: const BottomSheetBodyProduction(), initSize: 0.6);
          }),
      body: const SafeArea(child: ProductionBody()),
    );
  }
}
