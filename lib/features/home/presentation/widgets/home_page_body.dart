import 'package:calculation/features/home/presentation/widgets/list_view_item.dart';
import 'package:calculation/features/home/presentation/widgets/search_text_field.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageBody extends StatelessWidget {
  HomePageBody({
    super.key,
  });
  final query = FirebaseDatabase.instance.ref('users/Ahmad');
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20.h, top: 75.h),
          child: const SearchTextField(),
        ),
        Expanded(
          child: FirebaseAnimatedList(
            query: query,
            itemBuilder: (context, snapshot, animation, index) {
              Map myData = snapshot.value as Map;
              return ListViewItem(
                  count: myData[index], productName: "productName");
            },
          ),
        ),
      ],
    );
  }
}
