import 'package:dbestech_yt_ticket_app/base/bottom_nav_bar.dart';
import 'package:dbestech_yt_ticket_app/base/res/app_routes.dart';
import 'package:dbestech_yt_ticket_app/screens/home/all_hotels.dart';

import 'package:dbestech_yt_ticket_app/screens/home/all_tickets.dart';
import 'package:dbestech_yt_ticket_app/screens/home/hotel_details.dart';
import 'package:dbestech_yt_ticket_app/screens/ticket/ticket_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ປ່ຽນຈາກ MaterialApp ມາເປັນ GetMaterialApp
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // ເຮົາສາມາດລົບໂຄ້ດແຖວນີ້ອອກ ແລ້ວໄປກຳນົດໜ້າຫຼັກທີ່ routes ໄດ້
      // ແຕ່ເຮົາບໍ່ສາມາດກຳນົດພ້ອມກັນທັງ 2 ແບບໄດ້ (home ແລະ "/") ເລືອກຢ່າງ 1
      // home: const BottomNavBar(),

      // ສ້າງ map ຂອງໜ້າແອັບແຕ່ລະໜ້າເພື່ອຄວາມງ່າຍໃນການ navigate ໂດຍໃຊ້ key ແທນ
      routes: {
        AppRoutes.homePage: (context) => BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.hotelDetails: (context) => const HotelDetails(),
      },
    );
  }
}
