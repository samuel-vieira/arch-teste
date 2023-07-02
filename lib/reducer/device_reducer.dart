import 'package:atomic_state/entities/device.dart';
import 'package:atomic_state/repository/device_repository.dart';
import 'package:atomic_state/stores/device_store.dart';
import 'package:atomic_state/stores/host_store.dart';
import 'package:rx_notifier/rx_notifier.dart';

class DeviceReducer extends RxReducer {
  final DeviceRepository _deviceRepository = DeviceRepository();

  DeviceReducer() {
    on(() => [fetchDevices.value], _getDevices);
    on(() => [setHostsOnDevices.value], _setHosts);
  }

  void _getDevices() async {
    deviceLoading.value = true;
    List<Device> deviceList = await _deviceRepository.getDevices();
    devices.clear();
    devices.addAll(deviceList);
    fetchHosts.call();
    deviceLoading.value = false;
  }

  void _setHosts() {
    for (Device device in devices) {
      device.hosts = hosts.where((host) => device.ip == host.deviceId).toList();
    }
  }
}
