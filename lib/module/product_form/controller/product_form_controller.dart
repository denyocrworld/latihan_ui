import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProductFormController extends State<ProductFormView>
    implements MvcController {
  static late ProductFormController instance;
  late ProductFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      photo = widget.item!["photo"];
      productName = widget.item!["product_name"];
      price = widget.item!["price"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  bool get isEditMode => widget.item != null;

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? photo;
  String? productName;
  num? price;

  doSave() async {
    //validasi
    if (isEditMode) {
      print("Edit Mode!");
      await ProductService().update(
        id: widget.item!["id"],
        photo: photo!,
        productName: productName!,
        price: price!,
      );
    } else {
      await ProductService().create(
        photo: photo!,
        productName: productName!,
        price: price!,
      );
    }

    Get.back();
  }
}
