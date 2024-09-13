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
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Welcome to Open Space Hotel, your budget-friendly haven in the heart of London! Located in a vibrant neighborhood, our hotel offers comfortable and cozy accommodations at an unbeatable price of just \$25 per night. Whether you're traveling for leisure or business, you'll find everything you need for a pleasant stay. Our rooms are designed to provide a restful escape from the bustling city, with essential amenities such as free Wi-Fi, clean linens, and a comfortable bed. Guests can enjoy our shared lounge area, which features a relaxed atmosphere perfect for meeting fellow travelers or unwinding after a day of sightseeing. We are conveniently located near public transport, local attractions, and a variety of dining options. Stay with us at Open Space Hotel, where comfort meets affordability, and discover the best of London without breaking the bank!",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Relate Images",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  margin: const EdgeInsets.only(bottom: 16),
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(right: 8),
                      child: Image.network(
                          "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/7d/66/e5/salana-boutique-hotel.jpg?w=1200&h=-1&s=1"),
                    ),
                    itemCount: 3,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
