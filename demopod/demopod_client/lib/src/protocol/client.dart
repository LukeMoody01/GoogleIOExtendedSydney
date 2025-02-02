/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:demopod_client/src/protocol/employee.dart' as _i3;
import 'package:demopod_client/src/protocol/address.dart' as _i4;
import 'package:demopod_client/src/protocol/user.dart' as _i5;
import 'protocol.dart' as _i6;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello({required _i3.Employee employee}) =>
      caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'employee': employee},
      );

  _i2.Future<String> goodbye(
    String name,
    int days,
  ) =>
      caller.callServerEndpoint<String>(
        'example',
        'goodbye',
        {
          'name': name,
          'days': days,
        },
      );

  _i2.Future<_i4.Address> saveAddress({required _i4.Address address}) =>
      caller.callServerEndpoint<_i4.Address>(
        'example',
        'saveAddress',
        {'address': address},
      );

  _i2.Future<_i5.User> saveUser({required _i5.User user}) =>
      caller.callServerEndpoint<_i5.User>(
        'example',
        'saveUser',
        {'user': user},
      );

  _i2.Future<_i5.User?> getUser(int id) => caller.callServerEndpoint<_i5.User?>(
        'example',
        'getUser',
        {'id': id},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
  }) : super(
          host,
          _i6.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
        ) {
    example = EndpointExample(this);
  }

  late final EndpointExample example;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {'example': example};

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
