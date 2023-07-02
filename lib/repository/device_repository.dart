import 'package:atomic_state/adapters/device_adapter.dart';
import 'package:atomic_state/dto/device_dto.dart';
import 'package:atomic_state/entities/device.dart';
import 'package:atomic_state/services/devices_service.dart';

class DeviceRepository {
  DeviceRepository();

  final DeviceService _deviceService = DeviceService();

  Future<List<Device>> getDevices() async {
    List<Device> devices = [];

    List<DeviceDTO> devicesDTO = await _deviceService.fetchDevices();

    for (var deviceDTO in devicesDTO) {
      devices.add(DeviceAdapter().fromDTO(deviceDTO));
    }

    return devices;
  }
}
