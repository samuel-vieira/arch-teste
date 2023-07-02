import 'package:atomic_state/entities/device.dart';
import 'package:rx_notifier/rx_notifier.dart';

// Atom
final devices = RxList<Device>([]);
final deviceLoading = RxNotifier<bool>(false);

// Action
final fetchDevices = RxNotifier.action();
