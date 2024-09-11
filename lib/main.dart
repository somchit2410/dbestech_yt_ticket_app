import 'package:dbestech_yt_ticket_app/base/bottom_nav_bar.dart';
import 'package:dbestech_yt_ticket_app/screens/home/all_tickets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        "/": (context) => const BottomNavBar(),
        "all_tickets": (context) => const AllTickets(),
      },
    );
  }
}
