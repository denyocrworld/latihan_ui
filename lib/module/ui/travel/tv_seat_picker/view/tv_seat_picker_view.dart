import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TvSeatPickerView extends StatefulWidget {
  const TvSeatPickerView({Key? key}) : super(key: key);

  Widget build(context, TvSeatPickerController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Seat"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.square,
                        size: 24.0,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "Available",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.square,
                        size: 24.0,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "Selected",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.square,
                        size: 24.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "Unavailable",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.62,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 26,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xfffdc620),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                onPressed: () =>
                                    Get.to(const TvSeatPickerView()),
                                child: const Text(
                                  "Executive 1",
                                  style: TextStyle(
                                    color: Color(0xff393e48),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LayoutBuilder(builder: (context, constraint) {
                            double spacing = 6;
                            var size = ((constraint.biggest.width - 10) / 4) -
                                spacing * 2;

                            return Wrap(
                              runSpacing: spacing,
                              spacing: spacing,
                              children: List.generate(60, (index) {
                                var number =
                                    (index + 1).toString().padLeft(2, "0");
                                bool selected =
                                    controller.usedSeats.contains(index);

                                bool selectedSeatsByOthers =
                                    controller.selectedSeats.contains(index);

                                var color = Colors.grey[300];
                                if (selectedSeatsByOthers) {
                                  color = Colors.orange;
                                } else if (selected) {
                                  color = Colors.green;
                                }

                                return InkWell(
                                  onTap: () => controller.updateSeat(index),
                                  child: Container(
                                    width: size,
                                    height: size,
                                    margin: EdgeInsets.only(
                                      right: (index + 1) % 2 == 0 &&
                                              (index + 1) % 4 != 0
                                          ? 20.0
                                          : 0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                          8.0,
                                        ),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        number,
                                        style: TextStyle(
                                          color:
                                              selected || selectedSeatsByOthers
                                                  ? Colors.white
                                                  : Colors.grey[600],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  RotatedBox(
                    quarterTurns: 1,
                    child: SizedBox(
                      height: 50.0,
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 4,
                              width: 600,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(3, (index) {
                                  var className = controller.classList[index];
                                  var selected =
                                      controller.selectedClassIndex == index;
                                  return InkWell(
                                    onTap: () => controller.updateClass(index),
                                    child: Container(
                                      height: 34.0,
                                      width: 120.0,
                                      margin: const EdgeInsets.only(
                                        left: 16.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: selected
                                            ? Colors.orange
                                            : Colors.grey[300],
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(
                                            16.0,
                                          ),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "$className",
                                          style: TextStyle(
                                            color: selected
                                                ? const Color(0xff393e48)
                                                : Colors.grey[500],
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 24.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Wrap(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.orange,
                  width: 4.0,
                ),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Selected seat",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Text(
                      "Exective 1, Seat 12",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Text(
                      "\$64.00",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
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
                      "Confirm Seat",
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
        ],
      ),
    );
  }

  @override
  State<TvSeatPickerView> createState() => TvSeatPickerController();
}
