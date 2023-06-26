import 'package:atomic_state/dto/device_dto.dart';
import 'package:atomic_state/entities/device.dart';

class DeviceAdapter {
  Device fromDTO(DeviceDTO deviceDTO) {
    return Device(
      name: deviceDTO.name,
      ip: deviceDTO.ip,
      hosts: const [],
    );
  }
}
