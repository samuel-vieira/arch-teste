import 'package:atomic_state/repository/host_repository.dart';
import 'package:atomic_state/stores/host_store.dart';
import 'package:flutter/foundation.dart';
import 'package:rx_notifier/rx_notifier.dart';

class HostReducer extends RxReducer {
  final HostRepository _hostRepository = HostRepository();

  HostReducer() {
    on(() => [fetchHosts.value], _fetchHosts);
  }

  _fetchHosts() {
    hosts.value.addAll(_hostRepository.getHost());
    hosts.value = List.from(hosts.value);
    setHostsOnDevices.call();
    debugPrint(hosts.toString());
  }
}
