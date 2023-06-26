import 'dart:convert';

import 'package:atomic_state/data/data.dart';
import 'package:atomic_state/dto/device_dto.dart';

class DeviceService {
  DeviceService();

  final List<DeviceDTO> _devices = [];

  List<DeviceDTO> fetchDevices() {
    final deviceDecoded = _decodeDevice();

    _setDevices(deviceDecoded);

    return _devices;
  }

  void _setDevices(dynamic devices) {
    for (var device in devices) {
      _devices.add(DeviceDTO.fromJson(device));
    }
  }

  dynamic _decodeDevice() {
    const deviceEncoded = data;
    return json.decode(deviceEncoded)["device"];
  }
}
