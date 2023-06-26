import 'package:equatable/equatable.dart';

class DeviceDTO extends Equatable {
  final String name;
  final String ip;

  const DeviceDTO({
    required this.name,
    required this.ip,
  });

  @override
  List<Object?> get props => [name, ip];

  @override
  String toString() {
    return 'name: $name, ip: $ip';
  }

  factory DeviceDTO.fromJson(Map<String, dynamic> json) {
    return DeviceDTO(
      name: json["name"],
      ip: json["ip"],
    );
  }
}
