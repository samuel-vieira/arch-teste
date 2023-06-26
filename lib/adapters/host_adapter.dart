import 'package:atomic_state/dto/host_dto.dart';
import 'package:atomic_state/entities/host.dart';

class HostAdapter {
  Host fromHostDTO(HostDTO hostDTO) {
    return Host(
      name: hostDTO.name,
      ip: hostDTO.ip,
      deviceId: hostDTO.deviceId,
    );
  }
}
