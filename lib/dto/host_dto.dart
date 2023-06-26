class HostDTO {
  final String name;
  final String ip;
  final String deviceId;

  HostDTO({
    required this.name,
    required this.ip,
    required this.deviceId,
  });

  factory HostDTO.fromJson(Map<String, dynamic> json) {
    return HostDTO(
      name: json["name"],
      ip: json["ip"],
      deviceId: json["device_ip"],
    );
  }
}
