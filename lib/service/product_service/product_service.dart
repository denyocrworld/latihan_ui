import 'package:dio/dio.dart';

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

  create({
    required String photo,
    required String productName,
    required num price,
  }) async {
    var response = await Dio().post(
      "https://capekngoding.com/demo/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "photo": photo,
        "product_name": productName,
        "price": price,
      },
    );
    Map obj = response.data;
  }

  update({
    required int id,
    required String photo,
    required String productName,
    required num price,
  }) async {
    var response = await Dio().post(
      "https://capekngoding.com/demo/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "photo": photo,
        "product_name": productName,
        "price": price,
      },
    );
    Map obj = response.data;
  }

  delete(int id) async {
    var response = await Dio().delete(
      "https://capekngoding.com/demo/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    print(response.statusCode);
  }
}
