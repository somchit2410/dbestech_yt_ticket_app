import 'package:dbestech_yt_ticket_app/base/res/media.dart';
import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/heading_text.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/text_style_four.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/text_style_third.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App logo
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppMedia.logo,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),

              // Profile details
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeadingText(text: "Book Tickets", isColor: false),
                  const TextStyle4(text: "New-York", isColor: true),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppStyle.profileLocationColor,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppStyle.profileStatusColor),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Premium status",
                          style: TextStyle(
                              color: AppStyle.profileStatusColor,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Expanded(child: Container()),

              // Edit button
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit,
                        size: 15,
                        color: AppStyle.profileStatusColor,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Edit",
                        style: TextStyle(
                            color: AppStyle.profileStatusColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),

          // divider line
          Divider(
            color: Colors.grey.shade300,
          ),

          // badge notification
          Stack(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppStyle.primaryColor,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyle.primaryColor,
                        size: 27,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextStyle3(text: "You've got new award"),
                        Text(
                          "You have 95 flights in a year",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: const Color(0xFF264CD2),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 25),

          // big text
          Text(
            "Accumulated miles",
            style: AppStyle.headLineStyle2,
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  "198844",
                  style: TextStyle(
                    fontSize: 45,
                    color: AppStyle.textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: AppStyle.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "11 June 2024",
                      style: AppStyle.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                // divider line
                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(height: 5),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      upperText: "23 042",
                      isColor: true,
                      belowText: "Miles",
                      crossAlign: CrossAxisAlignment.start,
                    ),
                    AppColumnTextLayout(
                      upperText: "Arline CO",
                      isColor: true,
                      belowText: "Received from",
                      crossAlign: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                // divider line
                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      upperText: "24",
                      isColor: true,
                      belowText: "Miles",
                      crossAlign: CrossAxisAlignment.start,
                    ),
                    AppColumnTextLayout(
                      upperText: "McDonal's",
                      isColor: true,
                      belowText: "Received from",
                      crossAlign: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                // divider line
                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      upperText: "52 340",
                      isColor: true,
                      belowText: "Miles",
                      crossAlign: CrossAxisAlignment.start,
                    ),
                    AppColumnTextLayout(
                      upperText: "DBestech",
                      isColor: true,
                      belowText: "Received from",
                      crossAlign: CrossAxisAlignment.end,
                    ),
                  ],
                ),

                const SizedBox(height: 30),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "How to get more miles",
                    style: AppStyle.headLineStyle3
                        .copyWith(color: AppStyle.ticketBlue),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
