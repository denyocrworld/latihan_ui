// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      id: json['id'] as int?,
      customerName: json['customer_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      age: json['age'] as int?,
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_name': instance.customerName,
      'phone_number': instance.phoneNumber,
      'age': instance.age,
    };
