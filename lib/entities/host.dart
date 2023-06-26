import 'package:equatable/equatable.dart';

class Host extends Equatable {
  final String name;
  final String ip;
  final String deviceId;

  const Host({
    required this.name,
    required this.ip,
    required this.deviceId,
  });

  @override
  List<Object?> get props => [name, ip, deviceId];

  @override
  String toString() {
    return 'name: $name, ip: $ip, deviceID: $deviceId';
  }
}
