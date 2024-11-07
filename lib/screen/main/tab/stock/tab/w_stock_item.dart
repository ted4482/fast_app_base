import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_stock.dart';
import 'package:flutter/material.dart';

class StockItem extends StatelessWidget {
  final Stock stock;

  const StockItem(this.stock, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Tap(
        onTap: () => Nav.push(StockDetailScreen(stock.name)),
        child: Row(
          children: [
            Image.asset(stock.stockImagePath, width: 50),
            width20,
            (stock.name).text.bold.size(18).make(),
            emptyExpanded,
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              /// 오늘 가격 - 전날 가격 %
              stock.todayPercentageString.text.color(stock.getPriceColor(context)).make(),
              "${stock.currentPrice.toComma()}원".text.color(context.appColors.lessImportant).make(),
            ],)
          ],
        ),
      ),
    );
  }
}
