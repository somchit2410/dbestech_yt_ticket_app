import 'package:dbestech_yt_ticket_app/base/res/media.dart';
import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class AppPromotion extends StatelessWidget {
  const AppPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // left promotion banner
        Container(
          padding: const EdgeInsets.all(15),
          // margin: const EdgeInsets.only(right: 15),
          width: size.width * 0.45,
          height: 410,
          decoration: BoxDecoration(
              color: AppStyle.ticketColor,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 2),
              ]),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  color: AppStyle.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppMedia.planeSit),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "20% discount on the early booking of this flight. Don't miss",
                style: AppStyle.headLineStyle1,
              )
            ],
          ),
        ),

        // right promotion banner
        Column(
          children: [
            Stack(
              children: [
                // 2nd banner
                Container(
                  padding: const EdgeInsets.all(15),
                  // margin: const EdgeInsets.only(right: 0),
                  width: size.width * 0.42,
                  height: 200,
                  decoration: BoxDecoration(
                      color: AppStyle.circleColor,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 2),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor survey",
                        style: AppStyle.headLineStyle1.copyWith(
                          color: AppStyle.ticketColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Take the survey about our services and get discount",
                        style: AppStyle.headLineStyle2.copyWith(
                          color: AppStyle.ticketColor,
                        ),
                      )
                    ],
                  ),
                ),

                // circle shape use Positioned widget so we can locate it position everywhere
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: const Color(0xFF189999),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // 3rd banner
            Container(
              padding: const EdgeInsets.all(15),
              // margin: const EdgeInsets.only(right: 0),
              width: size.width * 0.42,
              height: 200,
              decoration: BoxDecoration(
                  color: AppStyle.ticketOrange,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 2),
                  ]),
              child: Column(
                children: [
                  Text(
                    "Take love",
                    style: AppStyle.headLineStyle1.copyWith(
                      color: AppStyle.ticketColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1, // Smaller size for the first image
                        child: Image(
                          image: AssetImage(AppMedia.joyEmoji),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Flexible(
                        flex: 2, // Larger size for the second image
                        child: Image(
                          image: AssetImage(AppMedia.bearFace),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Flexible(
                        flex: 1, // Smaller size for the third image
                        child: Image(
                          image: AssetImage(AppMedia.smilingLove),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
