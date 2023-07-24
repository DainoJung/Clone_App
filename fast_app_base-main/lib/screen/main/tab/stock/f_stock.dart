import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:flutter/material.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          actions: [
            ImageButton(
              onTap: () {
                context.showSnackbar('검색');
              },
              imagePath: '$basePath/icon/stock_search.png',
            ),
            ImageButton(
              onTap: () {
                context.showSnackbar('캘린더');
              },
              imagePath: '$basePath/icon/stock_calendar.png',
            ),
            ImageButton(
              onTap: () {
                context.showSnackbar('설정');
              },
              imagePath: '$basePath/icon/stock_settings.png',
            ),
            const SliverToBoxAdapter(
                child: Column(
              children: [],
            )),
          ],
        )
      ],
    );
  }
}
