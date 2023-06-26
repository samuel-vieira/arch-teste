import 'package:atomic_state/entities/host.dart';
import 'package:equatable/equatable.dart';

class Device extends Equatable {
  final String name;
  final String ip;
  List<Host> hosts;

  Device({
    required this.name,
    required this.ip,
    required this.hosts,
  });

  @override
  List<Object?> get props => [name, ip, hosts];

  @override
  String toString() {
    return 'name: $name, ip: $ip, hosts: $hosts';
  }
}
