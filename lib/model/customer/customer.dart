import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  factory Customer({
    int? id,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    int? age,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
