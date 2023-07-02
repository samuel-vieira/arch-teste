import 'package:atomic_state/entities/host.dart';
import 'package:rx_notifier/rx_notifier.dart';

// Atom
final hosts = RxList<Host>([]);

// Action
final fetchHosts = RxNotifier.action();
final setHostsOnDevices = RxNotifier.action();
