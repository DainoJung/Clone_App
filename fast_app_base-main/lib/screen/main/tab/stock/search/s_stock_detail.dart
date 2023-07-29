import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class StockDetailScreen extends StatelessWidget {
  final String stockName;

  const StockDetailScreen(this.stockName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: stockName.text.make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            '주식 상세'.text.make(),
          ],
        ),
      ),
    );
  }
}
