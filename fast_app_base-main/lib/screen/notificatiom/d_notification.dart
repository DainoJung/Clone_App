import 'package:fast_app_base/screen/notificatiom/vo/vo_notification.dart';
import 'package:fast_app_base/screen/notificatiom/w_notification_item.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/enum/enum_nav_ani.dart';

class NotificationDialog extends DialogWidget {
  final List<TtossNotification> notification;
  NotificationDialog(this.notification,
      //애니메이션 추가
      {super.key,
      super.animation = NavAni.Bottom});

  @override
  DialogState<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      //투명으로 변경
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ...widget.notification
              .map((element) => NotificationItemWidget(
                    onTap: () {
                      widget.hide();
                    },
                    notification: element,
                  ))
              .toList()
        ],
      ),
    );
  }
}
