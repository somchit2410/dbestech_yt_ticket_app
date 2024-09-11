import 'package:dbestech_yt_ticket_app/screens/search/widgets/app_tabs.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs(
      {super.key, required this.showTabText1, required this.showTabText2});
  final String showTabText1;
  final String showTabText2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          // Airline tickets button
          AppTabs(
            tapText: showTabText1,
          ),

          // Hotel button
          AppTabs(
            tapText: showTabText2,
            tabBorder: true,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}
