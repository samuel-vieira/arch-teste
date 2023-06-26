import 'dart:convert';

import 'package:atomic_state/data/data.dart';
import 'package:atomic_state/dto/host_dto.dart';
import 'package:atomic_state/entities/host.dart';

class HostService {
  final List<HostDTO> _hosts = [];

  List<HostDTO> fetchHosts() {
    try {
      const encodedHost = data;
      final decodedHosts = _decodeHosts(encodedHost);

      _setHosts(decodedHosts);

      return _hosts;
    } catch (error) {
      rethrow;
    }
  }

  void _setHosts(List hosts) {
    for (var host in hosts) {
      _hosts.add(HostDTO.fromJson(host));
    }
  }

  List _decodeHosts(String encodedHost) {
    return json.decode(encodedHost)['host'];
  }
}
