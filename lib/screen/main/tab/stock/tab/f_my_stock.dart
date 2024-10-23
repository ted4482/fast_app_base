import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_long_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/w_interest_stock_list.dart';
import 'package:flutter/material.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getMyAccount(context),
        height20,
        getMyStock(context),
      ],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            "계좌".text.make(),
            Row(
              children: [
                "443원".text.bold.size(24).make(),
                const Arrow(),
                emptyExpanded,
                RoundedContainer(
                    backgroundColor: context.appColors.buttonBackground,
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    radius: 8,
                    child: "채우기".text.size(12).make()),
              ],
            ),
            height30,
            const LongButton(title: "주문내역"),
            const LongButton(title: "판매수익"),
            height10,
          ],
        ),
      );

  Widget getMyStock(BuildContext context) => Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: context.appColors.roundedLayoutBackground,
            child: Column(
              children: [
                Column(
                  children: [
                    height30,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "관심주식".text.bold.make(),
                        "편집하기".text.color(context.appColors.lessImportant).make(),
                      ],
                    ),
                    height20,
                    Tap(
                      onTap: () {
                        context.showSnackbar("기본");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "기본".text.make(),
                          const Arrow(direction: AxisDirection.up),
                        ],
                      ).pSymmetric(v: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const InterestStockList().p(20),
        ],
      );
}
