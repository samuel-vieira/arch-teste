import 'package:atomic_state/adapters/host_adapter.dart';
import 'package:atomic_state/dto/host_dto.dart';
import 'package:atomic_state/entities/host.dart';
import 'package:atomic_state/services/hosts_service.dart';

class HostRepository {
  final HostService _hostService = HostService();

  final List<Host> _hosts = [];

  List<Host> getHost() {
    final List<HostDTO> hostsDTO = _hostService.fetchHosts();

    for (HostDTO hostDTO in hostsDTO) {
      _hosts.add(HostAdapter().fromHostDTO(hostDTO));
    }

    return _hosts;
  }
}
