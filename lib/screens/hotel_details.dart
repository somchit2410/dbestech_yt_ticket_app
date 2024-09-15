import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:dbestech_yt_ticket_app/base/utils/app_json.dart';
import 'package:flutter/material.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  late int index = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args['index'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8),
              child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppStyle.primaryColor,
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () => Navigator.pop(context)),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${hotelList[index]["image"]}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        hotelList[index]["place"],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          shadows: [
                            Shadow(
                              color: AppStyle.primaryColor,
                              blurRadius: 10,
                              offset: const Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ExpandedTextWidget(
                    text: hotelList[index]["details"],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "More Images",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  margin: const EdgeInsets.only(bottom: 16),
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, imagesIndex) => Container(
                      margin: const EdgeInsets.only(right: 8),
                      child: Image.asset(
                          // "index" ແມ່ນອ້າງອິງເຖິງລຳດັບຂອງຊຸດຂໍ້ມູນ (map) ແຕ່ລະໂຕ (outer)
                          // "imagesIndex" ແມ່ນອ້າງອິງເຖິງລຳດັບຂອງລາຍການພາຍໃນ "more_images" ແຕ່ລະໂຕ (inner)
                          "assets/images/${hotelList[index]["more_images"][imagesIndex]}"),
                    ),
                    itemCount: hotelList[index]["more_images"].length,
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

class ExpandedTextWidget extends StatefulWidget {
  const ExpandedTextWidget({super.key, required this.text});
  final String text;

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  bool isExpanded = false;
  _toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    var textWidget = Text(
      widget.text,
      maxLines: isExpanded ? null : 10,
      overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () => _toggleExpanded(),
          child: Text(
            isExpanded ? "Less" : "More",
            style:
                AppStyle.baseTextStyle.copyWith(color: AppStyle.primaryColor),
          ),
        )
      ],
    );
  }
}
