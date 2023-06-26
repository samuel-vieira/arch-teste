import 'package:atomic_state/entities/device.dart';
import 'package:rx_notifier/rx_notifier.dart';

// Atom
final devices = RxNotifier<List<Device>>([]);

// Action
final fetchDevices = RxNotifier.action();
