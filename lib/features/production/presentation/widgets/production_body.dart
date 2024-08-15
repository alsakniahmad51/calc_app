// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:calculation/features/production/presentation/pages/production_page.dart';
import 'package:calculation/features/production/presentation/widgets/production_table_row.dart';
import 'package:flutter/material.dart';

class ProductionBody extends StatelessWidget {
  const ProductionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return IntrinsicHeight(
          child: Column(
            children: [
              ProductionTableRow(
                index: index,
              ),
            ],
          ),
        );
      },
    );
  }
}
