import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier.freezed.dart';
part 'supplier.g.dart';

@freezed
class Supplier with _$Supplier {
  factory Supplier({
    int? id,
    @JsonKey(name: 'supplier_name') String? supplierName,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    int? age,
  }) = _Supplier;

  factory Supplier.fromJson(Map<String, dynamic> json) =>
      _$SupplierFromJson(json);
}
