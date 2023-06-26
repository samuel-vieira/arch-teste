import 'package:atomic_state/entities/device.dart';
import 'package:atomic_state/repository/device_repository.dart';
import 'package:atomic_state/stores/device_store.dart';
import 'package:atomic_state/stores/host_store.dart';
import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

class DeviceReducer extends RxReducer {
  final DeviceRepository _deviceRepository = DeviceRepository();

  DeviceReducer() {
    on(() => [fetchDevices.value], _getDevices);
    on(() => [setHostsOnDevices.value], _setHosts);
  }

  void _getDevices() {
    devices.value.addAll(_deviceRepository.getDevices());
    devices.value = List.from(devices.value);
  }

  void _setHosts() {
    debugPrint('set hosts called');
    for (Device device in devices.value) {
      device.hosts =
          hosts.value.where((host) => device.ip == host.deviceId).toList();
    }

    devices.value = List.from(devices.value);
  }
}
