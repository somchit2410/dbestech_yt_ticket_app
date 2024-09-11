import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/app_double_text.dart';
import 'package:dbestech_yt_ticket_app/screens/search/widgets/app_promotion.dart';
import 'package:dbestech_yt_ticket_app/screens/search/widgets/app_text_icons.dart';
import 'package:dbestech_yt_ticket_app/screens/search/widgets/app_ticket_taps.dart';
import 'package:dbestech_yt_ticket_app/screens/search/widgets/find_ticket.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
            "What are\nyou looking for?",
            style: AppStyle.headLineStyle1
                .copyWith(color: AppStyle.textColor, fontSize: 35),
          ),
          const SizedBox(height: 20),

          // swicth tab button
          const AppTicketTabs(
            showTabText1: "All tickets",
            showTabText2: "Hotels",
          ),
          const SizedBox(height: 20),

          // departure flight
          const AppTextIcons(
            icon: Icons.flight_takeoff_outlined,
            text: "Departure",
          ),
          const SizedBox(height: 15),

          // Arrival flight
          const AppTextIcons(
            icon: Icons.flight_land_outlined,
            text: "Arrial",
          ),
          const SizedBox(height: 20),

          // find button
          const FindTicket(buttonText: "Find Tickets"),
          const SizedBox(height: 30),

          // show all flight list
          AppDoubleText(
            titleText: 'Upcoming Flights',
            subText: 'View all',
            func: () {},
          ),
          const SizedBox(height: 15),
          const AppPromotion(),
        ],
      ),
    );
  }
}
