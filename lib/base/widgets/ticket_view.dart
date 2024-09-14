import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/big_circle.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/big_dot.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/text_style_four.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  final bool wholeScreen;
  final Map<String, dynamic> ticket;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    // ທຳການເກັບຄ່າຂະໜາດຂອງໜ້າຈໍໂທລະສັບ
    final size = MediaQuery.of(context).size;

    return SizedBox(
      // ກຳນົດຂະໜາດຄວາມກວ້າງ = 85% ຂອງຂະໜາດໜ້າຈໍໂທລະສັບ
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            // ພາກສ່ວນຂອງປີ້ຍົນເບື້ອງເທິງ
            Container(
              // margin ໄລຍະເບື້ອງນອກ
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyle.ticketBlue
                    : AppStyle.ticketColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  // ສະແດງຂໍ້ມູນຍົນຂາອອກ ແລະ ປາຍທາງດ້ວຍສັນຍາລັກ
                  Row(
                    children: [
                      TextStyle3(
                          text: ticket["from"]["code"], isColor: isColor),

                      Expanded(child: Container()),
                      // ສັນຍາລັກຍົນບີນ
                      BigDot(isColor: isColor),
                      // Stack ໃຊ້ສາລັບໃຫ້ widgets ຊ້ອນທັບກັນໄດ້
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                randomDivider: 6,
                                isColor: isColor,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : AppStyle.dotColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(isColor: isColor),
                      Expanded(child: Container()),

                      TextStyle3(
                          text: ticket["to"]["code"],
                          isColor: isColor,
                          textAlign: TextAlign.end),
                    ],
                  ),

                  const SizedBox(height: 3),

                  // ສະແດງຂໍ້ມູນຍົນຂາອອກ ແລະ ປາຍທາງດ້ວຍຊື່ ແລະ ເວລາ
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: TextStyle4(
                            text: ticket["from"]["name"],
                            isColor: isColor,
                          )),
                      Expanded(child: Container()),
                      TextStyle4(text: ticket["flying_time"], isColor: isColor),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyle4(
                            text: ticket["to"]["name"],
                            isColor: isColor,
                            textAlign: TextAlign.end),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // ພາກສ່ວນຂັ້ນກາງລະຫວ່າງເບື້ອງເທິງ ແລະ ລຸ່ມ
            Container(
              color: isColor == null
                  ? AppStyle.ticketOrange
                  : AppStyle.ticketColor,
              child: Row(
                children: [
                  BigCircle(
                    isRight: false,
                    isColor: isColor,
                  ),
                  Expanded(
                    child: AppLayoutBuilderWidget(
                      randomDivider: 16,
                      width: 6,
                      isColor: isColor,
                    ),
                  ),
                  BigCircle(isRight: true, isColor: isColor)
                ],
              ),
            ),

            // ພາກສ່ວນຂອງປິ້ຍົນເບື້ອງລຸ້ມ
            Container(
              // margin ໄລຍະເບື້ອງນອກ
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyle.ticketOrange
                    : AppStyle.ticketColor,
                borderRadius: isColor == null
                    ? const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))
                    : const BorderRadius.all(Radius.circular(0)),
              ),

              /* ຮູບແບບທີ່ 1 ໃນການວາງ Layout ຂອງພາກສ່ວນປີ້ຍົນ ຄືກັນກັບແບບ 1
              child: Column(
                children: [
                  // ສະແດງຂໍ້ມູນຍົນຂາອອກ ແລະ ປາຍທາງດ້ວຍສັນຍາລັກ
                  Row(
                    children: [
                      const SizedBox(
                          width: 100, child: TextStyle3(text: "1 MAY")),
                      Expanded(child: Container()),
                      const TextStyle3(text: "08:00 AM"),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TextStyle3(text: "23", textAlign: TextAlign.end),
                      ),
                    ],
                  ),

                  const SizedBox(height: 3),

                  // ສະແດງຂໍ້ມູນຍົນຂາອອກ ແລະ ປາຍທາງດ້ວຍຊື່ ແລະ ເວລາ
                  Row(
                    children: [
                      const SizedBox(
                          width: 100, child: TextStyle4(text: "Date")),
                      Expanded(child: Container()),
                      const TextStyle4(text: "Departure time"),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TextStyle4(
                            text: "Number", textAlign: TextAlign.end),
                      ),
                    ],
                  ),
                ],
              ), */

              // ຮູບແບບທີ່ 2 ໃນການວາງ Layout ຂອງພາກສ່ວນປີ້ຍົນ
              child: Column(
                children: [
                  // ສະແດງຂໍ້ມູນຍົນຂາອອກ ແລະ ປາຍທາງດ້ວຍສັນຍາລັກ
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        upperText: ticket["date"],
                        isColor: isColor,
                        belowText: "Date",
                        crossAlign: CrossAxisAlignment.start,
                      ),
                      AppColumnTextLayout(
                        upperText: ticket["departure_time"],
                        isColor: isColor,
                        belowText: "Departure time",
                        crossAlign: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        upperText: ticket["number"].toString(),
                        isColor: isColor,
                        belowText: "Number",
                        crossAlign: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
