import 'package:dbestech_yt_ticket_app/base/res/app_routes.dart';
import 'package:dbestech_yt_ticket_app/base/res/media.dart';
import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';

import 'package:dbestech_yt_ticket_app/base/widgets/app_double_text.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/heading_text.dart';
import 'package:dbestech_yt_ticket_app/screens/home/widgets/hotel.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../../base/utils/app_json.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            // padding ໄລຍະເບື້ອງໃນ
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyle.headLineStyle3,
                        ),
                        const SizedBox(height: 5),
                        const HeadingText(text: "Book Tickets", isColor: false),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                // search bar
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.grey,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                AppDoubleText(
                  titleText: 'Upcoming Flights',
                  subText: 'View all',
                  func: () => Navigator.pushNamed(context, "all_tickets"),
                ),

                const SizedBox(height: 20),
                // Ticket list scrollable
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .take(2)
                        .map((singleTicket) => GestureDetector(
                            onTap: () {
                              var index = ticketList.indexOf(singleTicket);
                              Navigator.pushNamed(
                                  context, AppRoutes.ticketScreen,
                                  arguments: {"index": index});
                            },
                            child: TicketView(ticket: singleTicket)))
                        .toList(),
                  ),
                ),

                const SizedBox(height: 20),
                AppDoubleText(
                  titleText: 'Hotels',
                  subText: 'View all',
                  func: () => Navigator.pushNamed(context, "all_hotels"),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .take(2)
                        .map((singleHotel) => GestureDetector(
                            onTap: () {
                              var index = hotelList.indexOf(singleHotel);
                              Navigator.pushNamed(
                                  context, AppRoutes.hotelDetails,
                                  arguments: {"index": index});
                            },
                            child: Hotel(hotel: singleHotel)))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
