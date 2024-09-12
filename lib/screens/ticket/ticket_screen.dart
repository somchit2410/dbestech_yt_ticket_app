import 'package:barcode_widget/barcode_widget.dart';
import 'package:dbestech_yt_ticket_app/base/res/media.dart';
import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:dbestech_yt_ticket_app/base/utils/app_json.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/text_style_four.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/text_style_third.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/ticket_view.dart';
import 'package:dbestech_yt_ticket_app/screens/search/widgets/app_ticket_taps.dart';
import 'package:dbestech_yt_ticket_app/screens/ticket/widgets/black_circle_dots.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key, this.isColor});
  final bool? isColor;

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;

// This method is called whenever the widget's dependencies change.
// It's used here to check if any arguments were passed to this screen via navigation.
  @override
  void didChangeDependencies() {
    super
        .didChangeDependencies(); // Always call the parent class's method first.

    // Get any arguments passed to this screen when it was navigated to.
    // Safely cast the arguments to a Map, if available.
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map?;

    // Check if the arguments exist and contain a key named 'index'.
    // If so, set the ticketIndex to that value; otherwise, use a default value of 0.
    if (routeArgs != null && routeArgs.containsKey('index')) {
      ticketIndex = routeArgs['index'] ?? 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.bgColor,
        title: Text(
          'Tickets',
          style: AppStyle.headLineStyle1,
        ),
        centerTitle: true,
      ),
      backgroundColor: AppStyle.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            children: [
              // const SizedBox(height: 20),

              // tab button
              const AppTicketTabs(
                  showTabText1: "Upcoming", showTabText2: "Previous"),
              const SizedBox(height: 20),

              // ticket card
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                  isColor: true,
                ),
              ),

              const SizedBox(height: 1),

              // other info
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                color: AppStyle.ticketColor,
                child: Column(
                  children: [
                    // passenger info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          upperText: ticketList[ticketIndex]["passenger"],
                          isColor: true,
                          belowText: "Passenger",
                          crossAlign: CrossAxisAlignment.start,
                        ),
                        AppColumnTextLayout(
                          upperText: ticketList[ticketIndex]["passport"],
                          isColor: true,
                          belowText: "Passport",
                          crossAlign: CrossAxisAlignment.end,
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // --------- line
                    const AppLayoutBuilderWidget(
                      randomDivider: 16,
                      width: 6,
                      height: 1.5,
                      isColor: false,
                    ),
                    const SizedBox(height: 20),

                    // ticket info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          upperText: ticketList[ticketIndex]["e_ticket_number"],
                          isColor: true,
                          belowText: "Number of E-Ticket",
                          crossAlign: CrossAxisAlignment.start,
                        ),
                        AppColumnTextLayout(
                          upperText: ticketList[ticketIndex]["booking_code"],
                          isColor: true,
                          belowText: "Booking code",
                          crossAlign: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // --------- line
                    const AppLayoutBuilderWidget(
                      randomDivider: 16,
                      width: 6,
                      height: 1.5,
                      isColor: false,
                    ),
                    const SizedBox(height: 20),

                    // payment info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppMedia.visaLogo,
                                  scale: 11,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                TextStyle3(
                                  text: ticketList[ticketIndex]
                                      ["payment_method"],
                                  isColor: false,
                                ),
                              ],
                            ),
                            const SizedBox(height: 3),
                            const TextStyle4(
                              text: "Payment method",
                              isColor: true,
                            )
                          ],
                        ),
                        AppColumnTextLayout(
                          upperText:
                              "\$${NumberFormat("#,##0.00").format(ticketList[ticketIndex]["price"])}",
                          isColor: true,
                          belowText: "Price",
                          crossAlign: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 1,
              ),

              // bottom ticket details
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: AppStyle.ticketColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                ),

                // ສ້າງຮູບ 4 ແຈທີ່ສາມາດກຳນົດມູມໄດ້
                child: ClipRRect(
                  // ສຳລັບ Barcode plugin ໃນສ່ວນຂອງ data: ແມ່ນ URL ປາຍທາງເມື່ອເຮົາສະແກນ barcode,
                  // barcode: ແມ່ນຮູບແບບຂອງ barcode ທີ່ຈະທຳການ generate ມາ
                  child: BarcodeWidget(
                    height: 100,
                    width: double.infinity,
                    data: "https://www.facebook.com/somchit.ktv/",
                    drawText: false,
                    barcode: Barcode.code128(),
                    color: AppStyle.textColor,
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // original ticket
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),

          // positioned circle dots
          const BlackCircleDots(
            isLeft: true,
          ),
          const BlackCircleDots(
            isLeft: false,
          ),
        ],
      ),
    );
  }
}
