import 'package:fast_app_base/common/constant/app_colors.dart';
import 'package:fast_app_base/screen/notificatiom/d_notification.dart';
import 'package:fast_app_base/screen/notificatiom/notifications_dummy.dart';
import 'package:fast_app_base/screen/notificatiom/w_notification_item.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryDarkGrey,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("알림"),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => NotificationItemWidget(
                      notification: notificationDummies[index],
                      onTap: () {
                        NotificationDialog([
                          notificationDummies[0],
                          notificationDummies[1]
                        ]).show();
                      },
                    ),
                childCount: notificationDummies.length),
          ),
        ],
      ),
    );
  }
}
