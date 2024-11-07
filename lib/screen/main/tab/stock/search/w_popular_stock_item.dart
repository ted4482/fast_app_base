import 'package:animations/animations.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/material.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int number;

  const PopularStockItem({super.key, required this.stock, required this.number});

  @override
  Widget build(BuildContext context) {
    return OpenContainer<bool>(
      openColor: AppColors.veryDarkGrey,
      closedColor: AppColors.veryDarkGrey,
      openBuilder: (BuildContext context, VoidCallback _) {
        return StockDetailScreen(stock.name);
      },
      closedBuilder: (BuildContext context, VoidCallback action) {
        return Row(
          children: [
            SizedBox(width: 40, child: number.toString().text.make()),
            width30,
            stock.name.text.make(),
            emptyExpanded,
            stock.todayPercentageString.text.color(stock.getPriceColor(context)).make(),
          ],
        ).pSymmetric(v: 25);
      },
    );
  }
}
