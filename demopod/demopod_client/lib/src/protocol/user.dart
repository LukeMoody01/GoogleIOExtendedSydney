/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class User implements _i1.SerializableModel {
  User._({
    this.id,
    required this.addressId,
    this.address,
  });

  factory User({
    int? id,
    required int addressId,
    _i2.Address? address,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      addressId: jsonSerialization['addressId'] as int,
      address: jsonSerialization['address'] == null
          ? null
          : _i2.Address.fromJson(
              (jsonSerialization['address'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int addressId;

  _i2.Address? address;

  User copyWith({
    int? id,
    int? addressId,
    _i2.Address? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'addressId': addressId,
      if (address != null) 'address': address?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required int addressId,
    _i2.Address? address,
  }) : super._(
          id: id,
          addressId: addressId,
          address: address,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    int? addressId,
    Object? address = _Undefined,
  }) {
    return User(
      id: id is int? ? id : this.id,
      addressId: addressId ?? this.addressId,
      address: address is _i2.Address? ? address : this.address?.copyWith(),
    );
  }
}
