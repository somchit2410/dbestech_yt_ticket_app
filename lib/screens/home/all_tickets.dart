import 'package:dbestech_yt_ticket_app/base/res/app_routes.dart';
import 'package:dbestech_yt_ticket_app/base/utils/app_json.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/ticket_view.dart';
import 'package:flutter/material.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map(
                    (singleTicket) => GestureDetector(
                      // ເມື່ອກົດໄປທີ່ປີ້ແຕ່ລະອັນຈະໄປທີ່ໜ້າ TicketScreen
                      onTap: () {
                        var index = ticketList.indexOf(singleTicket);
                        Navigator.pushNamed(context, AppRoutes.ticketScreen,
                            arguments: {"index": index});
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        child: TicketView(
                          ticket: singleTicket,
                          wholeScreen: true,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
