import 'package:myproject_2_flutter/model/my_device.dart';
import 'package:riverpod/riverpod.dart';

var myDeviceStatePod = StateNotifierProvider<MyDevicePod, MyDeviceModel>(
    (ref) => MyDevicePod(ref));

class MyDevicePod extends StateNotifier<MyDeviceModel> {
  Ref ref;
  MyDevicePod(this.ref) : super(MyDeviceModel(isWifiOn: false));
  updateWifiState(bool data) {
    bool val = state.isWifiOn;
    state = state.copyWith(isWifiOn: data);
  }
}
