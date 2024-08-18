// ignore: depend_on_referenced_packages

import 'dart:developer';
import 'package:calculation/core/functions/navigator.dart';
import 'package:calculation/features/sales/presentation/pages/sales_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SalesActionPane extends StatelessWidget {
  const SalesActionPane({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      label: "بيع",
      icon: Icons.arrow_downward_outlined,
      backgroundColor: Colors.green,
      onPressed: (context) {
        MovingNavigator.navToPage(context: context, page: const SalesPage());
        log("بيع");
      },
    );
  }
}
