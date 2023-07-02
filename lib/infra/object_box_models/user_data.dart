// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class ContactDataObjectBox {
  @Id()
  int id;
  final String name;
  final String? address;
  final String? email;
  final String phone;

  ContactDataObjectBox(
      {this.id = 0,
      required this.name,
      this.address,
      this.email,
      required this.phone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'address': address,
      'email': email,
      'phone': phone,
    };
  }

  factory ContactDataObjectBox.fromMap(Map<String, dynamic> map) {
    return ContactDataObjectBox(
      id: map['id'] as int,
      name: map['name'] as String,
      address: map['address'] != null ? map['address'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      phone: map['phone'] as String,
    );
  }
}
