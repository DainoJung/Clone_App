import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/util/app_keyboard_util.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:flutter/material.dart';
import 'search_stock_data.dart';

class SearchAutoCompleteList extends StatelessWidget
    with SearchStockDataProvider {
  final TextEditingController controller;

  SearchAutoCompleteList(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final stock = searchData.autoCompleteList[index];
        final name = searchData.autoCompleteList[index].stockName;
        return Tap(
                onTap: () {
                  controller.clear();
                  searchData.addHistory(stock);
                  AppKeyboardUtil.hide(context);
                  Nav.push(StockDetailScreen(name));
                },
                child: name.text.make())
            .p(20);
      },
      itemCount: searchData.autoCompleteList.length,
    );
  }
}
