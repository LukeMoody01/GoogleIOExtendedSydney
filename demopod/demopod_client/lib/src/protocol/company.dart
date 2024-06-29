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

abstract class Company implements _i1.SerializableModel {
  Company._({
    required this.name,
    this.foundedDate,
    required this.employees,
  });

  factory Company({
    required String name,
    DateTime? foundedDate,
    required List<_i2.Employee> employees,
  }) = _CompanyImpl;

  factory Company.fromJson(Map<String, dynamic> jsonSerialization) {
    return Company(
      name: jsonSerialization['name'] as String,
      foundedDate: jsonSerialization['foundedDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['foundedDate']),
      employees: (jsonSerialization['employees'] as List)
          .map((e) => _i2.Employee.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  String name;

  DateTime? foundedDate;

  List<_i2.Employee> employees;

  Company copyWith({
    String? name,
    DateTime? foundedDate,
    List<_i2.Employee>? employees,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      if (foundedDate != null) 'foundedDate': foundedDate?.toJson(),
      'employees': employees.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CompanyImpl extends Company {
  _CompanyImpl({
    required String name,
    DateTime? foundedDate,
    required List<_i2.Employee> employees,
  }) : super._(
          name: name,
          foundedDate: foundedDate,
          employees: employees,
        );

  @override
  Company copyWith({
    String? name,
    Object? foundedDate = _Undefined,
    List<_i2.Employee>? employees,
  }) {
    return Company(
      name: name ?? this.name,
      foundedDate: foundedDate is DateTime? ? foundedDate : this.foundedDate,
      employees: employees ?? this.employees.clone(),
    );
  }
}
