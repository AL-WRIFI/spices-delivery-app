import 'package:flutter/material.dart';
import 'package:spices_ecommerce_app_main_abdulrham/core/services/auth_service.dart';

import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';
import 'profile_list_tile.dart';

class ProfileMenuOptions extends StatelessWidget {
  const ProfileMenuOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDefaults.padding),
      padding: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: AppDefaults.boxShadow,
        borderRadius: AppDefaults.borderRadius,
      ),
      child: Column(
        children: [
          ProfileListTile(
            title: 'بروفايلي',
            icon: AppIcons.profilePerson,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.profileEdit);
            },
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
            title: 'الاشعارات',
            icon: AppIcons.profileNotification,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.notifications);
            },
          ),
          // const Divider(thickness: 0.1),
          // ProfileListTile(
          //     title: 'اعدادات',
          //     icon: AppIcons.profileSetting,
          //     onTap: () {
          //       // Navigator.pushNamed(context, AppRoutes.settings);
          //     }),
          const Divider(thickness: 0.1),
          // ProfileListTile(
          //   title: 'Payment',
          //   icon: AppIcons.profilePayment,
          //   onTap: () => Navigator.pushNamed(context, AppRoutes.paymentMethod),
          // ),
          const Divider(thickness: 0.1),
          ProfileListTile(
              title: 'تسجيل الخروج ',
              icon: AppIcons.profileLogout,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, AppRoutes.login, (_) => false);
                AuthService().clearData();
              }),
        ],
      ),
    );
  }
}
