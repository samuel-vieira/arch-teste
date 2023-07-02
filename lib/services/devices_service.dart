import 'dart:convert';

import 'package:atomic_state/data/data.dart';
import 'package:atomic_state/dto/device_dto.dart';

class DeviceService {
  DeviceService();

  final List<DeviceDTO> _devices = [];

  Future<List<DeviceDTO>> fetchDevices() async {
    final deviceDecoded = _decodeDevice();

    await Future.delayed(const Duration(seconds: 2));
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
