import 'package:dbestech_yt_ticket_app/controller/bottom_nav_controller.dart';
import 'package:dbestech_yt_ticket_app/screens/home/home_screen.dart';
import 'package:dbestech_yt_ticket_app/screens/profile/profile_screen.dart';
import 'package:dbestech_yt_ticket_app/screens/search/search_screen.dart';
import 'package:dbestech_yt_ticket_app/screens/ticket/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ປ່ຽນຈາກ stf ເປັນ stl ເນຶ່ອງຈາກ stf ໃຊ້ພື້ນທີ່ຂໍ້ມູນຫຼາຍ, ເຮົາຄວນຈະໃຊ້ stl ຫຼາຍເທົ່າທີ່ຈະເຮັດໄດ້
class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  // dependency injection
  final BottomNavController controller = Get.put(BottomNavController());

  // list ທີ່ຈະວົນຊ້ຳໂດຍການນຳໃຊ້ index
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // ໃຊ້ Obx ເພື່ອໃຫ້ UI ຂອງເຮົາອັບເດດຂໍ້ມູນໃໝ່ທັນທີ
    return Obx(
      () {
        return Scaffold(
          body: Center(
            child: appScreens[controller.seletedIndex.value],
          ),
          bottomNavigationBar: BottomNavigationBar(
            // backgroundColor: bg,
            // currentIndex use to set index for BottomNavigationBar
            // after we setState for index
            currentIndex: controller.seletedIndex.value,
            onTap: controller.onItemTapped,
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Tickets",
              ),
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "Profile",
              ),
            ],
          ),
        );
      },
    );
  }
}
