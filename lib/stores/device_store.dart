import 'package:atomic_state/entities/device.dart';
import 'package:atomic_state/stores/host_store.dart';
import 'package:rx_notifier/rx_notifier.dart';

// Atom
final devices = RxNotifier<List<Device>>([]);

// Computed
//List<Device> get devicesWithHosts {
//List<Device> devicesNew = devices.value;
//final List<Device> devicesAux = [];

//for (Device device in devicesNew) {
//device.hosts.add(
//hosts.value.where((host) => host.deviceId == device.ip).toList().first,
//);
//devicesAux.add(device);
//}

//devicesNew = List.from(devicesAux);

//return devicesNew;
//}

// Action
final fetchDevices = RxNotifier.action();
