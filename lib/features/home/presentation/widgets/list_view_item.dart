// ignore: depend_on_referenced_packages
import 'dart:developer';

import 'package:calculation/features/production/presentation/pages/production_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: const StretchMotion(), children: [
        SlidableAction(
          label: "حذف الصنف",
          icon: Icons.delete_forever,
          backgroundColor: Colors.red,
          onPressed: (context) {
            log("حذف");
          },
        )
      ]),
      key: Key(index.toString()),
      startActionPane: ActionPane(motion: const StretchMotion(), children: [
        SlidableAction(
          label: "إنتاج",
          icon: Icons.add,
          backgroundColor: Colors.blue,
          onPressed: (context) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ProductionPage(),
            ));
            log("انتاج");
          },
        ),
        SlidableAction(
          label: "بيع",
          icon: Icons.arrow_downward_outlined,
          backgroundColor: Colors.green,
          onPressed: (context) {
            log("بيع");
          },
        )
      ]),
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
