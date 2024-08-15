// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:calculation/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductionPage extends StatelessWidget {
  const ProductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return IntrinsicHeight(
            child: Column(
              children: [
                TableRow(
                  index: index,
                ),
              ],
            ),
          );
        },
      )),
    );
  }
}

class TableRow extends StatelessWidget {
  const TableRow({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TableSell(index: index),
        TableSell(index: index),
        TableSell(index: index),
        TableSell(index: index),
      ],
    );
  }
}

class TableSell extends StatelessWidget {
  const TableSell({
    super.key,
    required this.index,
  });

  final int index;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 4.1;
    return Container(
      height: 40.h,
      width: width,
      decoration: BoxDecoration(border: Border.all()),
      child: Text("data:$index"),
    );
  }
}
