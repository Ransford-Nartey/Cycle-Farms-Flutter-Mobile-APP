import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fish_feeds_app/features/authentication/screens/signup/signup.dart';
import 'package:fish_feeds_app/utils/constants/colors.dart';
import 'package:fish_feeds_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screens/home/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    bool dark = UHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),

      /// -----[Navigation Menu]-----
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          backgroundColor: dark ? HkColors.dark : HkColors.light,
          indicatorColor: const Color(0xFF00868F),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Iconsax.home, color: const Color(0xFF00868F)),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shop, color: const Color(0xFF00868F)),
              label: 'Store',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart, color: const Color(0xFF00868F)),
              label: 'Wishlist',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user, color: const Color(0xFF00868F)),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  Rx selectedIndex = 0.obs;

  List<Widget> screens = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];
}
