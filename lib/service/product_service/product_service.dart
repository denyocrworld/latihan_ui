import 'package:dio/dio.dart';

import '../../model/product/product.dart';

class ProductService {
  Future<List> getProducts() async {
    var response = await Dio().get(
      "https://capekngoding.com/demo/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }

  create(Product product) async {
    var response = await Dio().post(
      "https://capekngoding.com/demo/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: product.toJson(),
    );
    Map obj = response.data;
  }
}

// Front End        NgirimDataKe      Backend
// Dart Model                           x
// Dart Model > JSON                  JSON > PHP Model | C# Model
