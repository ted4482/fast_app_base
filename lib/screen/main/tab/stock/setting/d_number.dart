import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';

class NumberDialog extends DialogWidget<int?> {
  NumberDialog({super.key, super.animation = NavAni.Fade, super.barrierDismissible = false});

  @override
  DialogState<NumberDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NumberDialog> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "숫자를 입력해주세요.".text.make(),
          TextField(controller: controller, keyboardType: TextInputType.number,
            onEditingComplete: () => completeInputNumber(),),
          RoundButton(text: "완료", onTap: (){
            completeInputNumber();
          })
        ],),
    );
  }

  void completeInputNumber() {
    final text = controller.text;
    if (text.isNotEmpty) {
      int number = int.parse(text);
      widget.hide(number);
    } else {
      widget.hide();
    }
  }
}
