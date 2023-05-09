// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FavoriteProductView extends StatelessWidget {
  const FavoriteProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = DashboardController.instance;

    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection("products").snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) return const Text("Error");
        if (snapshot.data == null) return Container();
        if (snapshot.data!.docs.isEmpty) {
          return const Text("No Data");
        }
        final data = snapshot.data!;
        return ListView.builder(
          itemCount: data.docs.length,
          padding: EdgeInsets.zero,
          clipBehavior: Clip.none,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            Map<String, dynamic> item =
                (data.docs[index].data() as Map<String, dynamic>);
            item["id"] = data.docs[index].id;
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
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
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            item["product_name"],
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            data.docs[index].id,
                            style: const TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "8.1 km",
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              const Icon(
                                Icons.circle,
                                size: 4.0,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange[400],
                                size: 16.0,
                              ),
                              const Text(
                                "4.8",
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            item["category"],
                            style: const TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            "€${item["price"]}",
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () => controller.doAddToCart(item),
                            child: const Text("Add to Cart"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
