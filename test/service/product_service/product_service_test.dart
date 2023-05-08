import 'package:hyper_ui/model/product/product.dart';
import 'package:hyper_ui/service/product_service/product_service.dart';

void main() async {
  // testWidgets('product service ...', (tester) async {
  //   // TODO: Implement test
  //   print("hello");

  //   var productList = await ProductService().getProducts();
  //   print(productList);
  // });

  await ProductService().create(Product(
    id: 1,
    productName: "SK KRETEK 12",
    photo: "https://i.ibb.co/S32HNjD/no-image.jpg",
    price: 100.0,
    description: "-",
  ));

  var productList = await ProductService().getProducts();
  print(productList);
}
