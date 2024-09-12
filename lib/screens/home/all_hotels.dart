import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:dbestech_yt_ticket_app/base/utils/app_json.dart';
import 'package:dbestech_yt_ticket_app/screens/home/widgets/hotel.dart';
import 'package:flutter/material.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(
        title: const Text("All Hotels"),
        centerTitle: true,
        backgroundColor: AppStyle.bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 1.0,
          ),
          itemCount: hotelList.length,
          itemBuilder: (context, index) {
            var singleHotel = hotelList[index];
            return Hotel(hotel: singleHotel);
          },
        ),
      ),
    );
  }
}
