import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flounaelza_app/feature/transaction/transaction_page.dart';
import 'package:flounaelza_app/feature/action/action_page.dart';
import '../product/product_page.dart';
import '../history/history_page.dart';

import 'main_controller.dart';

class NavTabPage extends StatelessWidget {
  const NavTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavTabController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                ProductPage(),
                TransactionPage(),
                ActionPage(),
                HistoryPage(),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
                color: Colors.grey,
                border: Border(
                  top: BorderSide(color: Colors.white, width: 1.0
                )
              )
            ),
            child: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 5,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // SMBottomNavBarItem(
                  //   imageDeactive: AppImages.icHomeUnactive.image(),
                  //   imageActive: AppImages.icHomeActive.image(),
                  //   currentIndex: controller.tabIndex,
                  //   onTap: controller.changeTabIndex,
                  //   label: 'txt_menu_home'.tr,
                  //   index: 0,
                  // ),
                  // SMBottomNavBarItem(
                  //   imageDeactive: AppImages.icActivityUnactive.image(),
                  //   imageActive: AppImages.icActivityActive.image(),
                  //   currentIndex: controller.tabIndex,
                  //   onTap: (value) {
                  //     controller.changeTabIndex(value);
                  //   },
                  //   label: 'txt_menu_my_activity'.tr,
                  //   index: 1,
                  // ),
                  // SMBottomNavBarItem(
                  //   imageDeactive: AppImages.icNotifUnactive.image(),
                  //   imageActive: AppImages.icNotifActive.image(),
                  //   currentIndex: controller.tabIndex,
                  //   onTap: controller.changeTabIndex,
                  //   label: 'txt_menu_notification'.tr,
                  //   index: 2,
                  // ),
                  // SMBottomNavBarItem(
                  //   imageDeactive: AppImages.icProfileUnactive.image(),
                  //   imageActive: AppImages.icProfileActive.image(),
                  //   currentIndex: controller.tabIndex,
                  //   onTap: (value) {
                  //     controller.changeTabIndex(value);
                  //   },
                  //   label: 'txt_menu_profile'.tr,
                  //   index: 3,
                  // ),
                ],
              ),
            )
          ),
        );
      },
    );
  }
}