import 'package:calculation/domain/model/main_model.dart';
import 'package:calculation/domain/model/production_model.dart';
import 'package:calculation/domain/model/sallry_model.dart';
import 'package:calculation/presentation/widgets/bottom_sheet_body.dart';
import 'package:calculation/presentation/widgets/search_text_field.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/list_view_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  MainModel mainModel = MainModel(
      name: "دبدوب",
      sallary: SallaryModel(
          sallary: 5,
          sallaryDate: DateTime(2024, 4, 2),
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
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return AbsorbPointer(
                absorbing: false,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.4,
                    maxChildSize: 0.9,
                    minChildSize: 0.32,
                    builder: (context, scrollController) {
                      return SingleChildScrollView(
                        controller: scrollController,
                        child: const Directionality(
                            textDirection: TextDirection.rtl,
                            child: BottomSheetBody()),
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 20.h,
            ),
            child: const SearchTextField(),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListViewItem(
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
