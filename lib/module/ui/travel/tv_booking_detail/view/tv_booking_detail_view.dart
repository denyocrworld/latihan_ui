import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TvBookingDetailView extends StatefulWidget {
  const TvBookingDetailView({Key? key}) : super(key: key);

  Widget build(context, TvBookingDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ticket"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Icon(
                Icons.upload_outlined,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      left: -18,
                      top: 100.0,
                      child: CircleAvatar(
                        radius: 18.0,
                        backgroundColor: Color(0xff383d47),
                      ),
                    ),
                    const Positioned(
                      right: -18,
                      top: 100.0,
                      child: CircleAvatar(
                        radius: 18.0,
                        backgroundColor: Color(0xff383d47),
                      ),
                    ),
                    const Positioned(
                      right: -18,
                      bottom: 200.0,
                      child: CircleAvatar(
                        radius: 18.0,
                        backgroundColor: Color(0xff383d47),
                      ),
                    ),
                    const Positioned(
                      left: -18,
                      bottom: 200.0,
                      child: CircleAvatar(
                        radius: 18.0,
                        backgroundColor: Color(0xff383d47),
                      ),
                    ),
                    const Positioned(
                      top: 109.0,
                      left: 0,
                      right: 0,
                      child: Divider(
                        color: Color(0xff383d47),
                        thickness: 4.0,
                      ),
                    ),
                    const Positioned(
                      bottom: 209.0,
                      left: 0,
                      right: 0,
                      child: Divider(
                        color: Color(0xff383d47),
                        thickness: 4.0,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(30.0),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 24.0,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  "Executive",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xff383d47),
                                  ),
                                ),
                              ),
                              Text(
                                "14 Apr 2023",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff383d47),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 80.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "From",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                    Text(
                                      "Yogyakarta (YK)",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text(
                                      "To",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                    Text(
                                      "Jakarta (JAKK)",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Depature",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                    Text(
                                      "07:00 AM",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text(
                                      "Arrival",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                    Text(
                                      "03:00 PM",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Class",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                    Text(
                                      "Executive",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text(
                                      "Seat",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                    Text(
                                      "12,14,15",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Passenger",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                    Text(
                                      "4 Adult",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text(
                                      "Baggage",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                    Text(
                                      "15 Kg",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383d47),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 200,
                        width: 100,
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              "https://i.ibb.co/MhpNSbN/qr.png",
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              height: 42,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfffdc620),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onPressed: () => Get.to(const TvBookingDetailView()),
                child: const Text(
                  "Download Ticket",
                  style: TextStyle(
                    color: Color(0xff393e48),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TvBookingDetailView> createState() => TvBookingDetailController();
}
