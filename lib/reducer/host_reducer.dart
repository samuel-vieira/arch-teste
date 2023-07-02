import 'package:atomic_state/repository/host_repository.dart';
import 'package:atomic_state/stores/host_store.dart';
import 'package:rx_notifier/rx_notifier.dart';

class HostReducer extends RxReducer {
  final HostRepository _hostRepository = HostRepository();

  HostReducer() {
    on(() => [fetchHosts.value], _fetchHosts);
  }

  _fetchHosts() {
    hosts.clear();
    hosts.addAll(_hostRepository.getHost());
    setHostsOnDevices.call();
  }
}
