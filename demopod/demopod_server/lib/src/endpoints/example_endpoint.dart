import 'package:demopod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ExampleEndpoint extends Endpoint {
  Future<String> hello(Session session, {required Employee employee}) async {
    return 'Hello ${employee.name}';
  }

  Future<String> goodbye(Session session, String name, int days) async {
    return 'Goodbye $name. See you in $days days';
  }

  Future<Address> saveAddress(
    Session session, {
    required Address address,
  }) async {
    final result = await session.db.insert<Address>([address]);
    return result.first;
  }

  Future<User> saveUser(Session session, {required User user}) async {
    final result = await session.db.insert<User>([user]);
    return result.first;
  }

  Future<User?> getUser(Session session, int id) async {
    return session.db.findById<User>(
      id,
      include: User.include(
        address: Address.include(),
      ),
    );
  }
}
