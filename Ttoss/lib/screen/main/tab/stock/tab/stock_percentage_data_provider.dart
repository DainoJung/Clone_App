import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

abstract mixin class StockPercentageDataProvider {
  int get currentPrice;
  int get yesterdayClosePrice;

  String get todayPercentage =>
      ((currentPrice - yesterdayClosePrice) / yesterdayClosePrice * 100)
          .toStringAsPrecision(2);

  String get todayPercentageString => "$symbol$todayPercentage%";

  bool get isPlus => currentPrice > yesterdayClosePrice;
  bool get isSame => currentPrice == yesterdayClosePrice;
  bool get isMinus => currentPrice < yesterdayClosePrice;

  String get symbol => isPlus ? "+" : "";

  Color getPriceColor(BuildContext context) => isSame
      ? context.appColors.lessImporant
      : isPlus
          ? context.appColors.plus
          : context.appColors.minus;
}
