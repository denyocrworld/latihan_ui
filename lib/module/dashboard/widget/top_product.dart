// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TopProductView extends StatelessWidget {
  const TopProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = DashboardController.instance;

    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection("products")
          .limit(3)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) return const Text("Error");
        if (snapshot.data == null) return Container();
        if (snapshot.data!.docs.isEmpty) {
          return const Text("No Data");
        }
        final data = snapshot.data!;
        return SizedBox(
          height: 160.0,
          child: ListView.builder(
            itemCount: data.docs.length,
            padding: EdgeInsets.zero,
            clipBehavior: Clip.none,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Map<String, dynamic> item =
                  (data.docs[index].data() as Map<String, dynamic>);
              item["id"] = data.docs[index].id;
              return Container(
                width: 160,
                height: 160,
                margin: const EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      item["photo"],
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  color: Colors.blue[400],
                ),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6.0),
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.green[800],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            12.0,
                          ),
                        ),
                      ),
                      child: const Text(
                        "PROMO",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8.0,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: const BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                          ),
                        ),
                        child: Text(
                          item["product_name"],
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 11.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
