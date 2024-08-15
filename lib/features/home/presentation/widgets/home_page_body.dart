import 'package:calculation/features/home/presentation/widgets/list_view_item.dart';
import 'package:calculation/features/home/presentation/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20.h, top: 75.h),
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
    );
  }
}
