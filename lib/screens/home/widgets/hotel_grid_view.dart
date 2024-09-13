import 'package:dbestech_yt_ticket_app/base/res/app_routes.dart';
import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class HotelGridView extends StatelessWidget {
  const HotelGridView({super.key, required this.hotel, required this.index});
  final Map<String, dynamic> hotel;
  final int index;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.hotelDetails,
            arguments: {"index": index});
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(right: 8),
        // width: size.width * 0.6,
        height: 320,
        decoration: BoxDecoration(
          color: AppStyle.primaryColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                // height: 180,
                decoration: BoxDecoration(
                  color: AppStyle.primaryColor,
                  borderRadius: BorderRadius.circular(13),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel["image"]}"),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                hotel["place"],
                style: AppStyle.headLineStyle2.copyWith(
                  color: AppStyle.kakiColor,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    hotel["destination"],
                    style: AppStyle.headLineStyle3.copyWith(
                      color: AppStyle.ticketColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    "\$${hotel["price"]}/Night",
                    style: AppStyle.headLineStyle3.copyWith(
                      color: AppStyle.kakiColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
