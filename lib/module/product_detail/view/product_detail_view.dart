import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_detail_controller.dart';

class ProductDetailView extends StatefulWidget {
  final Map item;
  const ProductDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  Widget build(context, ProductDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductDetail"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.network(
                item["photo"] ?? "https://i.ibb.co/S32HNjD/no-image.jpg",
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              Text(
                item["product_name"] ?? "-",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${item["price"]}",
                style: const TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductDetailView> createState() => ProductDetailController();
}
