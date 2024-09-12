import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key, required this.hotel});
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 15),
      width: size.width * 0.6,
      height: 320,
      decoration: BoxDecoration(
        color: AppStyle.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyle.primaryColor,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel["image"]}"),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              hotel["place"],
              style: AppStyle.headLineStyle1.copyWith(
                color: AppStyle.kakiColor,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              hotel["destination"],
              style: AppStyle.headLineStyle3.copyWith(
                color: AppStyle.ticketColor,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              "\$${hotel["price"]}/Night",
              style: AppStyle.headLineStyle1.copyWith(
                color: AppStyle.kakiColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
