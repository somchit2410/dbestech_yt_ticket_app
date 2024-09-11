import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:dbestech_yt_ticket_app/base/utils/app_json.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/ticket_view.dart';
import 'package:dbestech_yt_ticket_app/screens/search/widgets/app_ticket_taps.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),

          // title text
          Text(
            "Ticket",
            style: AppStyle.headLineStyle1
                .copyWith(color: AppStyle.textColor, fontSize: 35),
          ),
          const SizedBox(height: 20),
          const AppTicketTabs(
              showTabText1: "Upcoming", showTabText2: "Previous"),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: TicketView(
              ticket: ticketList[0],
              isColor: true,
            ),
          ),
        ],
      ),
    );
  }
}
