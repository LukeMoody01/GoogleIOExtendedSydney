/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Employee
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  Employee._({
    required this.name,
    this.dob,
    required this.role,
  });

  factory Employee({
    required String name,
    DateTime? dob,
    required String role,
  }) = _EmployeeImpl;

  factory Employee.fromJson(Map<String, dynamic> jsonSerialization) {
    return Employee(
      name: jsonSerialization['name'] as String,
      dob: jsonSerialization['dob'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dob']),
      role: jsonSerialization['role'] as String,
    );
  }

  String name;

  DateTime? dob;

  String role;

  Employee copyWith({
    String? name,
    DateTime? dob,
    String? role,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      if (dob != null) 'dob': dob?.toJson(),
      'role': role,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'name': name,
      if (dob != null) 'dob': dob?.toJson(),
      'role': role,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _EmployeeImpl extends Employee {
  _EmployeeImpl({
    required String name,
    DateTime? dob,
    required String role,
  }) : super._(
          name: name,
          dob: dob,
          role: role,
        );

  @override
  Employee copyWith({
    String? name,
    Object? dob = _Undefined,
    String? role,
  }) {
    return Employee(
      name: name ?? this.name,
      dob: dob is DateTime? ? dob : this.dob,
      role: role ?? this.role,
    );
  }
}
