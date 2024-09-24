import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:dbestech_yt_ticket_app/base/utils/app_json.dart';
import 'package:dbestech_yt_ticket_app/controller/text_expansion_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

class ExpandedTextWidget extends StatelessWidget {
  ExpandedTextWidget({super.key, required this.text});

  final TextExpansionController controller = Get.put(TextExpansionController());
  final String text;

  @override
  Widget build(BuildContext context) {
    // ທຸກການປ່ຽນແປງທີ່ຈະເກີດກັບ UI ແມ່ນຈະຕ້ອງຢູ່ພາຍໃນ Obx
    return Obx(
      () {
        var textWidget = Text(
          text,
          maxLines: controller.isExpanded.value ? null : 10,
          overflow: controller.isExpanded.value
              ? TextOverflow.visible
              : TextOverflow.ellipsis,
        );
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWidget,
            GestureDetector(
              onTap: () => controller.toggleExpanded(),
              child: Text(
                controller.isExpanded.value ? "Less" : "More",
                style: AppStyle.baseTextStyle
                    .copyWith(color: AppStyle.primaryColor),
              ),
            )
          ],
        );
      },
    );
  }
}
