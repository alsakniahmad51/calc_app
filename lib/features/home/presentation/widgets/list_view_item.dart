// ignore: depend_on_referenced_packages

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter/material.dart';

import 'delete_action_pane.dart';
import 'production_pane.dart';
import 'sales_action_pane.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: const ActionPane(
          motion: StretchMotion(), children: [DeleteActionPane()]),
      key: Key(index.toString()),
      startActionPane: const ActionPane(
          motion: StretchMotion(),
          children: [ProductionPane(), SalesActionPane()]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          height: 90,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(22)),
              color: Color.fromARGB(153, 192, 187, 187)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "30",
                  style: textStyle(),
                ),
                Text(
                  "حقيبة دبدوب",
                  style: textStyle(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle textStyle() =>
      const TextStyle(fontSize: 35, fontWeight: FontWeight.bold);
}
